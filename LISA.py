#! /Library/Frameworks/Python.framework/Versions/Current/bin/python
#
# PythonLISA Vers Ex 2.01  11/21/13; modified 4/18/14
#
# Vers Ex 1.01: First attempt to adapt LISA to simulate explanation
#               John E. Hummel, March 2008
# Vers 1.03: Smart semantics (my scary!)
# Vers 1.04: SP focus, diff temporal integration on props... other stuff
#            still my scary!  Goal: Contradiction detection without fucking
#            everything else up.
#        Note: as of 2/10/08 it is no longer necessary to name groups "G1" etc.:
#              can name them anything you like
# Vers 1.05: Incorporating DORA (aieeeee!)  (Done...and it axctually seems to work!)
# Vers 1.06: Working with goals and flow of control.  New version due to high risk of fucking things
#            up royally.
# Vers 1.07: Ex 1.06 is now at a local maximum.  Want to incorporate more LISAfer-like activation
#            mechanism (maybe?), group-based retrieval and other high(ish)-risk stuff.
#            Making a new version in case I screw anything up.
#            Also, moving main explanation routines (currently in LISA.py, Run()) to explain.py.
# Vers 1.08: 4/15/08: Vers 1.07 seems to work, no need t fuck it up.  Major change due to
#            conversation with David:
#            Implement new algorithm:
#            1) retrieve (from LTM, not recipient) into workspace using explanandum as driver
#            2) map from explanadum onto what was retrieved into workspace
#            3) infer from workspace onto explanandum
#            4) forget mappings and workspace; goto (1)
#
# Vers 1.09: 4/19/08
#            On the transition from Vers 1.08 to 1.09: The goals of 1.08 are not yet satisfied, but
#            I'm getting close. However, the model is misbehaving mysteriously; in ways I am trying hard
#            to debug.
#
#            The new Interrogate routines I wrote for the latest vers Ex 1.08 revealed that
#            the simulation dictionary is not keeping pace with the current state of the data structures
#            as embodied in dataTypes.py.  Specifically, they disagree on the existence and values of
#            the mapping connections (and on who knows what else).
#
#            Vers Ex 1.09 is aimed at streamlining the simulation dictionary so that it (a) contains only
#            information that is not already in dataTypes.py and (b) therefore keeps pace with everything else
#            that's going on in the model.
#
#            General idea: The simulation dictionary should contain ONLY those fast-changing variables that are
#            known only to LISA.py, and which it needs to communicate to the files it calls.
#            Anything contained in dataTypes.py, to which ALL the files have access, should be modified and
#            referenced Directly in dataTypes.py, NOT via the simulation dictionary
#
#            This transition is going to be Dangerous and Painful (hence the new version number), and is only
#            going to contribute indirectly to my immediate goal of implementing steps (1) - (4) above.
#
#            But hopefully it'll make the code a lot more transparent.
#
#            4/22/08: SUCCESS!
#
# Vers Ex 1.10: 5/20/08
#            No substantive change over ex 1.09
#            Attempt to clean up the graphics, putting the graphical functions
#            as a method on the unit type
# Vers Ex 1.11:  5/28/08
#            Avoid multiple retrieve/map/infer threads by constraining each new hypothesized
#            effect group to contain only a single proposition
# Vers Ex 1.12: 10/02/08
#            Implement capacity to have a verify mode (which initiates retrieve & map cycles):
#            To-be-verified prop gets connected to a "generic" group (i.e., a group with the "generic" semantic)
#            and attempts to retrieve consistent or inconsistent (but either way, relevant) other generic
#            groups from LTM
# Vers Ex 1.13: 10/21/08
#            Make group/prop retrievel from LTM more like prop retrieval from
#            active memory: On-line, based on... activation?  and stochastic
#            This is gonna change SHITLOADS of stuff
# Vers Ex 1.14: 10/31/08
#            Change in semantic relations: Now, instead of semantics activating Each Other automatically,
#            Build automatically connects each object and role up the semantic hierarchy
#            E.g., if the semantic "bird" is a member of the semantic "animal", then any object connected to bird
#            will automatically get connected also to animal, albeit more weakly
# Vers Ex 1.15: 9/11/09
#            Nothing scary: Just gonna try to improve the GUI. No effect on real functionality.
#            Look for the relevant function in dataTypes.py graphics.py
#            By the way, re-ran this version on some standard tests (StJohn, Wookyoung) and it still works as a
#            basic mapping and inference engine!  Yay, I didn't completely fuck it up (yet) with this explanation stuff!
# Vers Ex 1.16: 10/7/13
#            Updating retrieval routines to allow full prop to contribute to retrieval
#            This less than and prior to a full return to 1997 LISA
#            Retrieval is a (the) key bottleneck in explanation and LISA (vers Ex 1.15 and earlier) appears to do it stupidly
#            This is my attempt to make this more intelliugent by allowing LISA to use multiple props during retrieval of initial explation
# Vers Ex1.17: 10/24/13
#            Add lateral inhibition to LTM during retrieval
#



import dataTypes
import build
import pygame
import graphics
import runLISA
import hebbs
#import explain  # explanation routines, 9/25/07
import outFile
import math
import os, random, datetime
import getopt, sys
import LISA_gui
from LISA_gui import *

random.seed(os.urandom(99))  # seed random number generator

# I think the stuff below is more of what David wrote
### Define a Go dictionary: a default set of stuff to do with one keypress
##opts, args = getopt.getopt(sys.argv[1:], "hsgn", ["help", "silent", "graph", "nograph"])
##
### set Go variables
##go_immediately = 'no'

go_dict = {'path':dataTypes.go_path,
           'file_name':dataTypes.go_file_name,
           'use_graphics':dataTypes.go_use_graphics}

## Define the simulation dictionary HERE and then modify it as appropriate later
## make a dictionary called simulation that contains all the analogs, semantics, hebbs and events
## it will be this dictionsary that you pass around as an argument to run_network and so forth
## define these run variables now so you can put them in simulation dictionary
phase_set = {'groups':[],   # the list of groups and props in the current phase set
             'props':[],
             'sps':[],
             'preds':[],
             'objs':[],
             'child_props':[],
             'objs&childs':[]
             }

def init_simulation():
    simulation = {'sequence': None, #dataTypes.sequence # currennt_sequence_element,
                  'sequence_index': 0, #sequence_index,
                  'iteration': 0, # iteration within this phase set
                  'total_iteration':0, # iterations accumulated over entire run
                  'phase_iteration': 0, # phase_iteration, # for god-like WM
                  'pause': False, # pause,
                  'use_graphics': False, # use_graphics,
                  'driver':[], #driver,
                  'recip': [], #recip,
                  'dormant': [], #dormant,
                  'phase_set':phase_set,
                  'phase_set_settled':False, # set to true during retrieval iff goal is 'retrieve' and stuff got retrieved
                  'global_inhibition':0, #global_inhibition,
                  'simulation_complete': False, #simulation_complete,
                  'terminate_simulation':False,
                  'top_down_ok':False,  # top_down_ok
                  'retrieval_ok':False, # retrieval_ok if top_down_ok AND... what?... some additional iterations have gone by 10/7/13 (vers Ex1.15)
                  'iterations_settled':0, #iterations_settled,
                  'gr_refresh_rate':1, #gr_refresh_rate
                  'source':[] # the set of analogs that serve as the source of the explanation
                  }
    return simulation

simulation = init_simulation()

def empty_memory():
    # clear all data structures and init all run variables between runs
    # note that no file is in memory
    dataTypes.file_in_memory   = False
    dataTypes.sym_file         = []
    dataTypes.save_sym         = []
    dataTypes.file_name        = ''
##    dataTypes.file_path        = ''
##    dataTypes.path_list        = []
    # data structures
    dataTypes.analog = []
    dataTypes.sequence = []
    dataTypes.op_semantic = []
    dataTypes.group_semantic = []
    dataTypes.hebb_unit = []
    dataTypes.explanandum = None
    dataTypes.workspace = None
    # other variables
    dataTypes.diagnostics = False
    simulation = init_simulation()
    dataTypes.operating_mode   = 'LISA'


def dispose_inferred_units(unit_list):
    # disposes inferred units in an analog:
    # pops them off the End of the list
    done = False
    while not done:
        index = len(unit_list) - 1 # start at the end...
        if index == -1:
            done = True # done if list is empty (i.e, len = 0)
        else:
            if unit_list[index].inferred: # dispose of it
                # DIAG
                # print 'disposing of',unit_list[index].name
                unit_list.pop(index)
            else:
                done = True # done upon first encounter w/ non-inferred unit

def dispose_inferred_structures():
    # disposes of all inferred structures after a run
    # (1) dispose og the hebbs
    hebbs.dispose_all_hebbs()
    # (2) the inferred units
    for analog in dataTypes.analog:
        dispose_inferred_units(analog.inhibited)
        dispose_inferred_units(analog.group)
        dispose_inferred_units(analog.prop)
        dispose_inferred_units(analog.sp)
        dispose_inferred_units(analog.pred)
        dispose_inferred_units(analog.obj)
    # (3) the sequence elements added by LISA during explanation
    done = False
    while not done:
        index = len(dataTypes.sequence) - 1 # start at the end...
        if index == -1:
            done = True # done if list is empty (i.e, len = 0)
        else:
            if dataTypes.sequence[index].inferred: # dispose of it
                dataTypes.sequence.pop(index)
            else:
                done = True # done upon first encounter w/ non-inferred sequence element

def add_group_to_phase_set(group, phase_set):
    # a recursive function that adds a group and its sub-groups to the phase set

    if dataTypes.diagnostics:
        print 'adding group',group.name,'to phase set'

    # add the group
    phase_set.append(group)

    if dataTypes.diagnostics:
        print 'phase set:',
        for group in phase_set:
            print group.name,' ',
        print

    # recursively add the group's sub-groups to the phase set
    for sub_group in group.groups:
        phase_set = add_group_to_phase_set(sub_group.unit, phase_set)

    # return the phase set
    return phase_set


def run(simulation, batch_run):

    # this is the top-level run function (4/23/07)
    # first, write the parameter values to the output file
    if not batch_run:
        outFile.write_parameter_values()

    # * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
    # * * * * * * * * * Prepare various variables, etc  * * * * * * * * * * *
    # * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

    # prepare to write sequence info to file
    dataTypes.out_file.write('Sequence:\n')

    quit_simulation = False

    # if semantic death rate > 0, then randomlyt kill off semantics at beginning of simulation
    # NOTE: The following randomly kills off semantic_death PROPORTION of semantic units
    #       an alternative would be to randomly weaken connections
    if dataTypes.semantic_death > 0:
        for analog in dataTypes.analog:
            # groups
            for group in analog.group:
                for sem_link in group.semantic:
                    if random.random() < dataTypes.semantic_death:
                        sem_link.weight = 0
            # preds
            for pred in analog.pred:
                for sem_link in pred.semantic:
                    if random.random() < dataTypes.semantic_death:
                        sem_link.weight = 0
            # objs
            for obj in analog.obj:
                for sem_link in obj.semantic:
                    if random.random() < dataTypes.semantic_death:
                        sem_link.weight = 0

    # prepare the analogs' mapping and similarity lists to one another
    hebbs.set_up_mapping_lists(simulation)
    MOP_similarity_computed = False # set to true when you do it; only do it once

    # prime the prop priorities in all analogs
    for analog in dataTypes.analog:
        # set prop readinesses to max
        for prop in analog.prop:
            prop.readiness = dataTypes.max_prop_readiness
        runLISA.update_prop_priorities(analog, None)

    # DIAG
    if dataTypes.sequence == []:
        status_window.add_message('')
        status_window.add_message('woah!  You got no sequence elements!')
        status_window.add_message('')
    # end DIAG


    # if doing expanation, prediction or problem solving, keep track of which analog contains
    #   the explanandum and which contain/s the source of the explanation
    if dataTypes.sequence[0].goal[0] in ['EXPLAIN','PREDICT','SOLVE','VERIFY']:
        # 1) assume that the original driver is the explanandum
        dataTypes.explanandum = dataTypes.sequence[0].driver
        # 2) add all Other analogs to the source (both the recip and any in LTM)
        for analog in dataTypes.analog:
            if analog != dataTypes.sequence[0].driver:
                simulation['source'].append(analog)
        if dataTypes.diagnostics:
            print 'For explanation:'
            print 'The explanandum is',dataTypes.explanandum.name
            print 'The source(s) is/are',
            for analog in simulation['source']:
                print analog.name,',',
            print
        # 3) init last_cause_detected
        last_cause_detected = None # []

    # * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
    # * * * * * * * * * The beginning of the phase set loop * * * * * * * * *
    # * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

    # before starting any sequence elements, i.e., at very beginning of run, init
    #   total_iteration (i.e, iterations accumulated over entire run for RT purposes)
    #   to 0
    simulation['total_iteration'] = 0

    # INITIAL GOAL SETTING FOR EXPLANATION
    #
    # if you're in exlain, predict or solve mode, then:
    # (a) the 0th level goal of the first sequence element will be EXPLAIN, PREDICT or SOLVE and
    # (b) the immediate goal of the first sequence element should be to retrieve (i.e., a rule
    #     or other such from LTM)
    if dataTypes.sequence[0].goal[0] in ['EXPLAIN','PREDICT','SOLVE','VERIFY']:
        # To this end, set the goal to RETRIEVE, which will cause LISA to look for CE groups
        # But First: Pop off any nasty stray goals that may have migrated in there from previous
        #            batch runs... (this implemented on 5/27/08 in response to evidence of such an error)
        while len(dataTypes.sequence[0].goal) > 1: # while there is more than one goal on the stack...
            dataTypes.sequence[0].pop_goal()       # ... pop goals off the stack
        # Now set the goal to retrieve
        dataTypes.sequence[0].add_goal('RETRIEVE')

    # For each element in the sequence list...
    for sequence_element in dataTypes.sequence: #simulation['sequence']:

        # store the sequence element in the simulation
        simulation['sequence'] = sequence_element

        # 9/30/08, 10/08/08: If you're supposed to detect anomalies and you're in
        #   retrieval mode, then set SP_focus > 0, else set to default
        if sequence_element.detect_anomalies: # and simulation['sequence'].goal[-1] == 'RETRIEVE':
            dataTypes.SP_focus = 0.9
            dataTypes.prop_focus = 0.9
        else:
            dataTypes.SP_focus = dataTypes.default_SP_focus
            dataTypes.prop_focus = dataTypes.default_prop_focus

        # for graphics (and perhaps other purposes) inform the analogs of their status vis.
        #   driver, recip or dormant (vers Ex 1.09, 5/20/08)
        for analog in dataTypes.analog:
            # first, init all to dormant...
            analog.is_driver = False
            analog.is_recip = False
            # now set the flags on those that are driver and recip
            if analog is sequence_element.driver:
                analog.is_driver = True
            if analog in sequence_element.recip:
                analog.is_recip = True

        status_window.add_message('')
        status_window.add_message('================================')
        status_window.add_message(''.join(['Sequence element',str(sequence_element.index)]))
        status_window.add_message(''.join(['    Driver:', sequence_element.driver.name]))
        recip_names = ''
        for analog in sequence_element.recip:
            recip_names = recip_names + analog.name + '  '
        status_window.add_message(''.join(['    Recip: ',recip_names]))
        status_window.add_message('')
        status_window.add_message(''.join(['    Fire control: ',sequence_element.control]))
        goal_names = ''
        for goal in sequence_element.goal:
            goal_names = goal_names + goal+' '
        status_window.add_message(''.join(['    Goals: ',goal_names]))
        status_window.add_message('')
        status_window.add_message(''.join(['    Operating mode: ',dataTypes.operating_mode]))
        status_window.add_message(''.join(['    Update mapping connections: ',str(sequence_element.update_hebbs)]))
        status_window.add_message(''.join(['    Detect anomalies: ',str(sequence_element.detect_anomalies)]))

        # write sequence into to the outfile
        dataTypes.out_file.write('Seq. '+str(sequence_element.index))
        dataTypes.out_file.write('    Driver:'+sequence_element.driver.name)
        dataTypes.out_file.write('    Recip :')
        for analog in sequence_element.recip:
            dataTypes.out_file.write(' '+analog.name)
        dataTypes.out_file.write('    Fire control:'+sequence_element.control)
        if sequence_element.control == 'groups':
            if type(sequence_element.phase_set[0]) == dataTypes.GroupUnit:
                dataTypes.out_file.write(''.join([' (',sequence_element.phase_set[0].name,') ']))
        dataTypes.out_file.write('    Goals: ')
        for goal in sequence_element.goal:
            dataTypes.out_file.write(goal+' ')


        # make note of the sequence index in the simulation dictionary
        simulation['sequence_index'] = sequence_element.index

        #####################################################
        # (1) set up the phase set, driver & recip, etc, etc, etc.
        #####################################################

        # (1.1) driver & recip
        simulation['driver'] = sequence_element.driver
        simulation['recip'] = sequence_element.recip

        # (1.2) figure out which analogs, if any, are dormant
        # (1.2.1) first, init the dormant list
        simulation['dormant'] = []
        # (1.2.2) now iterate through the analogs: those that are neither driver nor recip are dormant
        for analog in dataTypes.analog:
            if not ((analog is simulation['driver']) or (analog in simulation['recip'])):
                simulation['dormant'].append(analog)

        # (1.3) set up the phase set: For now, this is gonna be prop-based (per tradition)
        #       eventually, it should be group- (and prop- ?) based
        #       3/5/08, vers Ex 1.06: I'm about to work on making it group-based...
        # (1.3.0) init the phase set
        simulation['phase_set']['groups'] = []
        simulation['phase_set']['props'] = []
        simulation['phase_set']['sps'] = []
        simulation['phase_set']['preds'] = []
        simulation['phase_set']['objs'] = []
        simulation['phase_set']['child_props'] = []
        simulation['phase_set']['objs&childs'] = []

        # (1.3.1) add the props & groups
        if sequence_element.control == 'groups':
            # firing is controlled by groups; props chosen randomly within groups
            #   (deterministic group-based firing indicated by 'groups-d' and is handled below)
            # read the group(s) from the sequence_element.phase_set
            #   randomly choose N props from the group named in the phase_set
            #   syntax: phase_set will be ['Gx', 'N'], where 'Gx' is a pointer to some group
            #   (e.g., G1) and 'N' is an integer specifying how many props from that group
            #   to randomly place in the phase set
            if type(sequence_element.phase_set[0]) in (dataTypes.GroupUnit, dataTypes.CEGroup, dataTypes.CauseGroup, dataTypes.EffectGroup): # first make sure you got a group
                # if you do, then recursively add that group and all its subgroups to the phase set
                # this recursive function call obviates and generalizes all the code below it
                simulation['phase_set']['groups'] = add_group_to_phase_set(sequence_element.phase_set[0], simulation['phase_set']['groups'])

                # now randomly choose N props from that group to enter the phase set
                # sequence_element.phase_set[1] gives N
                candidate_props = []
                # iterate through the groups in the phase set and add their props to the candidate prop list
                # this phase-set based code obviates the code commented out below
                for group in simulation['phase_set']['groups']:
                    for prop in group.prop:
                        candidate_props.append(prop.unit)

                # now, with a list of candidate props in hand, choose N at random
                num_selected = 0
                while num_selected < int(sequence_element.phase_set[1]):
                    num_selected += 1
                    # randomly select a prop from this group
                    prop = runLISA.random_prop_select(simulation['driver'],candidate_props)
                    # and place it into the current phase set
                    simulation['phase_set']['props'].append(prop)
                    # QUESTION: Where to update prop priorities??  Answer (?): At the point where
                    #           you put a prop into the phase set?  Let's try that.  And REMEMBER
                    #           to do it WHEREVER you add a prop to the phase set!
                    runLISA.update_prop_priorities(simulation['driver'],prop)
            else:
                print 'ERROR in Run(): Groups have control but group not specified in sequence_element.phase_set[0]'
        elif sequence_element.control == 'random':
            # non-group-based random firing
            # sequence_element.phase_set will contain the number, N, of props to randomly
            #   select and place into phase set
            num_to_select = int(sequence_element.phase_set[0])
            if type(num_to_select) == int:
                # got the number: select that number of props at random
                num_selected = 0
                while num_selected < num_to_select:
                    num_selected += 1
                    # randomly select a prop from the driver...
                    prop = runLISA.random_prop_select(simulation['driver'],None)
                    # ... place it into the current phase set...
                    simulation['phase_set']['props'].append(prop)
                    # ... and update prop priorities
                    runLISA.update_prop_priorities(simulation['driver'],prop)
            else:
                print 'ERROR in Run: random prop firing control but num props in phase set unspecified'
        elif sequence_element.control == 'props':
            # firing order set by user, stored in sequence_element.phase_set
            for prop in sequence_element.phase_set:
                simulation['phase_set']['props'].append(prop) # add the prop to the phase set
                runLISA.update_prop_priorities(simulation['driver'],prop) # update priorities
        elif sequence_element.control == 'groups-d':
            # recursively add the group and all its subgroups to the phase set
            if type(sequence_element.phase_set[0]) == dataTypes.GroupUnit: # first make sure you got a group
                simulation['phase_set']['groups'] = add_group_to_phase_set(sequence_element.phase_set[0], [])#simulation['phase_set']['groups'])
            # now add the prop to the phase set
            if type(sequence_element.phase_set[1]) == dataTypes.PropUnit: # first make sure you got a prop
                simulation['phase_set']['props'].append(sequence_element.phase_set[1])

        else: # error
            print 'ERROR in Run(): sequence_element.control = ',sequence_element.control
            print 'Run () does not know what to do with this control instruction'

        # write phase set to outfle
        dataTypes.out_file.write('    Phase set:')
        for prop in simulation['phase_set']['props']:
            dataTypes.out_file.write(' '+prop.name+':'+prop.pretty_name)
        dataTypes.out_file.write('\n')

        # (1.3.2.2)  Add groups based on their child groups
        # 3/5/08: This code SHOULD be obviated by hte recursive function call add_group_to_phase_set() above
        #         HOWEVER, that function does not succeed in putting the top-level group into the phase set
        #                  for some reason that completely and utterly eludes me.  It adds all the others, just
        #                  not eh group it's actualy Called on... except in the case of the group Explanandum...
        #         UNLESS the problem resides not with add_group_to_phase_set(), but with the code that's constructing
        #                  the sequence elements in Explain.py!
        for group in simulation['driver'].group:
            # check to see whether this group has group(s) in the phase set
            # if it does, then add it if it's not already in there
            # (don't bother checking groups that are already in phase set)
            if not group in simulation['phase_set']['groups']:
                for child in group.groups:
                    if child.unit in simulation['phase_set']['groups']:
                        simulation['phase_set']['groups'].append(group) # add the group

        # (1.3.2) add the SPs
        for prop in simulation['phase_set']['props']:
            for sp in prop.SPs:
                simulation['phase_set']['sps'].append(sp)
        # (1.3.3) add preds
        for sp in simulation['phase_set']['sps']:
            if not(sp.pred in simulation['phase_set']['preds']):  # avoid duplicate entry
                simulation['phase_set']['preds'].append(sp.pred)
        # (1.3.4) add objs to both the objs list and the objs&childs list
        for sp in simulation['phase_set']['sps']:
            if not sp.obj == None:
                if not(sp.obj in simulation['phase_set']['objs']):  # avoid duplicate entry
                    simulation['phase_set']['objs'].append(sp.obj)
                if not(sp.obj in simulation['phase_set']['objs&childs']):  # avoid duplicate entry
                    simulation['phase_set']['objs&childs'].append(sp.obj)
        # (1.3.4) add child props to both the child_props list and the objs&childs list
        for sp in simulation['phase_set']['sps']:
            if not sp.child_prop == None:
                if not(sp.child_prop in simulation['phase_set']['child_props']):  # avoid duplicate entry
                    simulation['phase_set']['child_props'].append(sp.child_prop)
                if not(sp.child_prop in simulation['phase_set']['objs&childs']):  # avoid duplicate entry
                    simulation['phase_set']['objs&childs'].append(sp.child_prop)
        # (1.3.5) figure out the phase set duration (ps_duration)
        ps_duration = 0
        for sp in simulation['phase_set']['sps']:
            if dataTypes.god_like_wm or dataTypes.operating_mode == 'DORA':
                ps_duration += dataTypes.phase_duration * 3 # each SP fires 3 times
            else:
                ps_duration += dataTypes.iterations_per_sp

        # (1.4) init the state of the network: activations, etc.
        runLISA.init_network_state(simulation)

        # (1.5) Tag all units in the phase set as Retieved for the purposes of
        #         updating their mapping connections
        for group in simulation['phase_set']['groups']:
            group.retrieved = True
        for prop in simulation['phase_set']['props']:
            prop.retrieved = True
        for sp in simulation['phase_set']['sps']:
            sp.retrieved = True
        for pred in simulation['phase_set']['preds']:
            pred.retrieved = True
        for obj in simulation['phase_set']['objs']:
            obj.retrieved = True
        for child in simulation['phase_set']['child_props']:
            child.retrieved = True

        # (1.6) Symmetry Breaking: Randomize the sti of the sps in the phase set
        #       But only if in normal WM mode!
        if not dataTypes.god_like_wm:
            for sp in simulation['phase_set']['sps']:
                sp.sti = dataTypes.min_sti + random.random() * (dataTypes.max_sti - dataTypes.min_sti)

        # DIAG: show the entire phase set
        if dataTypes.diagnostics:
            print '-----Phase set-----:'
            print '  Groups:',
            for unit in simulation['phase_set']['groups']:
                print unit.name,'  ',
            print
            print '  Props:',
            for unit in simulation['phase_set']['props']:
                print unit.name,'  ',
            print
            print '  SPs:',
            for unit in simulation['phase_set']['sps']:
                print unit.name,'  ',
            print
            print '  Preds:',
            for unit in simulation['phase_set']['preds']:
                print unit.name,'  ',
            print
            print '  Objs:',
            for unit in simulation['phase_set']['objs']:
                print unit.name,'  ',
            print
            print '  Ch. Props:',
            for unit in simulation['phase_set']['child_props']:
                print unit.name,'  ',
            print
            print '------------------'
        else:
            phase_set_contents = ''
            for unit in simulation['phase_set']['props']:
                phase_set_contents = phase_set_contents + unit.name + ' '
            status_window.add_message(''.join(['Phase set: ',phase_set_contents]))
            status_window.add_message('')

        # (1.7) Prepare graphical display: Show all analogs and units
        if simulation['use_graphics']:
            graphics.draw_all_names()
            graphics.draw_run_menu()

        #####################################################
        # (2) now run each iteration of this phase set
        #####################################################

        # init the phase iteration!
        simulation['phase_iteration'] = 0
        simulation['phase_set_settled'] = False # set to True in runLISA.retrieve_from_LTM() iff something gets retrieved

        # circumvent having to click on graphics window if no graphics
        if not simulation['use_graphics']:
            simulation['pause'] = False

        for iteration in xrange(ps_duration):

            # (2.0) Increment simulation-wide iteration counter
            simulation['total_iteration'] += 1

            # (2.1) * * * * * * update the state of the network * * * * * *
            # [all_settled, retrieved_prop_list, retrieved_group_list] = runLISA.update_network(simulation) # simplified 4/5/14
            all_settled = runLISA.update_network(simulation)

            # (2.2) make note of the iteration # (for the graphics)
            simulation['iteration'] = iteration

##            # if you retrieved something from LTM, then end the phase set -- removed 4/5/14
##            if simulation['phase_set_settled']:
##                break

            # (2.3) if using graphics, then update said graphics
            if simulation['use_graphics']:
                if simulation['iteration'] % simulation['gr_refresh_rate'] == 0:
                    # % is the mod operator
                    graphics.update_display(simulation)

            # (2.3, cont: for new GUI: check for user input)
            menu_option = process_events(LISA_gui.menus, LISA_gui.status_window)
            if menu_option == ('Run','Halt Simulation'):
                simulation['terminate_simulation'] = True
            elif menu_option == ('Display','Start or Stop'):
                simulation['pause'] = not(simulation['pause']) # pause or start the graphical display/simulation
            elif menu_option == ('Display','Faster'):
                simulation['gr_refresh_rate'] *= 2
            elif menu_option[1] == ('Display','Slower'):
                simulation['gr_refresh_rate'] = int(round(simulation['gr_refresh_rate']/2.0))
                if simulation['gr_refresh_rate'] < 1:
                    simulation['gr_refresh_rate'] = 1

            # (2.4) if, during the iteration you just ran, the user hit Q, then exit the iteration loop
            if simulation['terminate_simulation']:
                status_window.add_message('USER TERMINATED SIMULATION: Iteration '+str(simulation['iteration']))
                break

            # (2.5) if simulation complete then halt simulation
            if simulation['simulation_complete']:
                break


        # (2a) if the user hit Q, then exit the sequence loop
        if simulation['terminate_simulation']:
            status_window.add_message('USER TERMINATED SIMULATION: Sequence element '+str(sequence_element.index))
            break

        # (2.5) if simulation complete then halt simulation
        if simulation['simulation_complete']:
            status_window.add_message('Simulation complete')
            break

        #####################################################
        # (3) at the end of the phase set...
        #####################################################

        # 3.05) retrieve goups
        #       moved from inside phase set (here; inside update_network() in runLISA) to end of phase set 4/5/14
        if simulation['retrieval_ok'] and simulation['sequence'].goal[-1] == 'RETRIEVE': # HERE 10/7/13: Retrieval from LTM later than top_down_ok
            retrieved_group_list = explain.retrieve_group_from_LTM(simulation) # runLISA.retrieve_groups(simulation)

        # 3.1) update the hebbs if necesary
        if sequence_element.update_hebbs:
            if dataTypes.vers142_map_alg:   # use the new mapping algorithm (version142)
                hebbs.vers142_update_hebb_weights(simulation)
            else:                           # use the original (H&H 97, 03) algorithm
                hebbs.original_update_hebb_weights(simulation)

            # Vers Ex 2.01: Update Inductive Confidence (12/16/13)
            hebbs.update_inductive_confidence(simulation)

        # 3.2) pass support to recipient
        runLISA.spread_support_to_recipients(simulation['phase_set']['props'], simulation['recip'])

        # 3.3) compute mapping quality if necessary
        if sequence_element.sslearn == 0:  # 0 means LISA must decide when to learn
            hebbs.assess_mapping_quality(simulation)
            # now go through all the recipients and update their ready_to_learn fields
            for analog in simulation['recip']:
                for mq_link in analog.mapping_quality:
                    if mq_link.unit == simulation['driver']:
                        analog.ready_to_learn = (mq_link.weight >= dataTypes.ssl_threshold)

        # 3.4) and compute similarity if necesary
        if sequence_element.compute_similarity:
            # MOP similarity only once
            if not MOP_similarity_computed:
                hebbs.compute_mop_similarity(simulation)
            # MIP similarity
            hebbs.compute_mip_similarity(simulation)
            # write to output file
            # this code is gonna be ugly 'cause MIP and MOP similarity are
            #   in separate lists, so we'll have to iterate through one nested inside
            #   the other
            dataTypes.out_file.write('\n')
            dataTypes.out_file.write('Similarities as of step '+str(sequence_element.index)+':\n')
            for analog in dataTypes.analog:
                for MOP_sim in analog.MOP_similarity:
                    for MIP_sim in analog.MIP_similarity:
                        if MOP_sim.unit == MIP_sim.unit: # if both lists refer to same analog, then write
                            total_sim = MOP_sim.weight + MIP_sim.weight
                            dataTypes.out_file.write('Similarity of '+analog.name+' to '+MIP_sim.unit.name+':\n')
                            dataTypes.out_file.write('MOP Sim   = %.3f \n' % MOP_sim.weight)
                            dataTypes.out_file.write('MIP Sim   = %.3f \n' % MIP_sim.weight)
                            dataTypes.out_file.write('Total Sim = %.3f \n' % total_sim)
            dataTypes.out_file.write('\n')

        #######################################################################
        # 3.5)Explanation stuff! * * * * * * * * * * * * * * * * * * * * * * *
        #######################################################################

        if sequence_element.goal[0] in ('EXPLAIN','PREDICT','SOLVE','VERIFY'):
            [quit_simulation] = explain.flow_of_control(simulation,retrieved_group_list,batch_run)
            # the above function figures out what's going on and adds to the sequence
            # appropriately

        if quit_simulation:
            break

    # move all groups in all analogs off inhibited list for file saving
    for analog in dataTypes.analog:
        for group in analog.inhibited:
            explain.move_off_inhibited_list(group)

    # save results to file
    outFile.write_output_file(simulation)

    # save any analogs to .SYM files
    for analog in dataTypes.save_sym:
        outFile.save_as_sym_file(analog)

##    # DIAG
##    # write the Inductive Confidence histories of prop and GE group units
##    print
##    print 'Inductive Confidence Histories...'
##    for analog in dataTypes.analog:
##        print
##        print 'Analog',analog.name
##        for group in analog.group:
##            if type(group) == dataTypes.CEGroup:
##                    group.inductive_confidence.print_history()
##        for prop in analog.prop:
##            prop.inductive_confidence.print_history()
##        print
##
##    # end DIAG

    # dispose of all inferred structures
    dispose_inferred_structures()
    last_cause_detected = None

    # HERE: Somehow, you need to dispose all sequence elements except those specified in sym file!
    #       (They seem to be accumulating -- or at least their goals do -- across runs in a batch.)

    # if semantic death rate > 0, then you randomly killed off semantics at beginning of simulation
    #  Restore them!
    if dataTypes.semantic_death > 0:
        for analog in dataTypes.analog:
            # groups
            for group in analog.group:
                for sem_link in group.semantic:
                    sem_link.weight = 1
            # preds
            for pred in analog.pred:
                for sem_link in pred.semantic:
                    sem_link.weight = 1
            # objs
            for obj in analog.obj:
                for sem_link in obj.semantic:
                    sem_link.weight = 1

    # fnally, re-draw the network... and announce htat the simulation finished
    graphics.draw_all_names()
    status_window.add_message('')
    status_window.add_message('* * * * * * * * * *')
    status_window.add_message('Simulation is done.')
    status_window.add_message('* * * * * * * * * *')
    status_window.add_message('')


# define the batch list data structure
class BatchElement(object):
    def __init__(self):
        self.index = 0
        self.path = ''
        self.file_name = ''
        self.num_runs = 0

batch_list = []

def read_batch_list_file(batch_list, batch_path=''):
    # reads a batch_list from a text file and returns it to get_batch_list
    #
    print
    print 'Preparing to read a batch list from a file.'
    print
    print 'NOTE: If the files you want to run all reside'
    print '      in the same folder, And that folder is'
    print '      where you plan to save the output (.bat)'
    print '      file, And if that folder is where LISA'
    print '      will find the batch list file, then enter'
    print '      that folder as the Path in the menu below.'
    print '   Otherwise, e.g., if the SYM files reside in'
    print '      various different folders, then do not'
    print '      enter any path, and just include the path'
    print '      specification in (a) the files you name'
    print '      in the batch list file and (b) in the'
    print '      location where you wish to save the output'
    print '      (.bat) file.'
    print '   LOOK: Generally, be careful with this schiznet.'
    print
    local_menu = ''
    batch_file_name = ''
    batch_list_file = None
    out_file_name   = '' # the file to which the results will be saved
    batch_index = 0
    while not(local_menu == 'g' or local_menu == 'a'):
        print
        print
        print 'current batch sequence:'
        if batch_list == []:
            print 'NONE'
            print
        else:
            for batch in batch_list:
                print batch.index,') run',batch.path+batch.file_name,' ',batch.num_runs,'times'
            print
        print 'enter batch (f)ile name'
        print 'enter batch (p)ath'
        print '(g)o with batch sequence'
        print '(a)bort batch run'
        local_menu = raw_input('>')
        if local_menu == 'p':
            batch_path = raw_input('path (include ALL /s)>')
            out_file_name = batch_path
        elif local_menu == 'f':
            batch_file_name = raw_input('batch file name (with path if necessary)>')
            # now read the file
            # this is where the hard work comes: read the file and construct the batch_list
            # remember to report an error if the file fails to specify necessary info (good luck)
            full_file_name = dataTypes.data_directory+batch_path+batch_file_name
            batch_list_file = open(full_file_name, 'r')
            for text_line in batch_list_file:  # iterates through whole file, line by line
                words = text_line.split(' ') # parses line into words
                # there ought to be EXACTLY two words per line:
                #   either a sym file name followed by a number
                #   or the command --> followed by the path/filename.bat for saving the .bat file
                if words[0] == '-->':
                    out_file_name = out_file_name + words[1] # append the .bat file name to out_file_name
                else:
                    # interpret the first word as a file name & append to batch list
                    batch_list.append(BatchElement())
                    batch_list[-1].file_name = words[0]  # first word is file name
                    batch_list[-1].path = batch_path    # set the path
                    batch_list[-1].index = batch_index      # get the index
                    batch_list[-1].num_runs = int(words[1])  # interpret the second word as num runs
                    batch_index += 1                    # increment the index counter
        elif local_menu == 'a':
            batch_list = []
            out_file_name = ''

    # finally, at the end of the day, return the batch list
    return (batch_list, out_file_name)


def get_batch_list():
    # define the batch list for a batch run
    batch_list = []
    batch_path = ''
    all_done = False
    out_file_name = ''
    while not all_done:
        print
        print
        print 'Current Batch Sequence:'
        for element in batch_list:
            print str(element.index),')',str(element.num_runs),'runs of',element.path,element.file_name
        # init the value of element
        print
        print 'Current Path: Data/'+batch_path
        print '(g) Get batch sequence from file'
        print '(p) Change path'
        print '(n) New batch element'
        print '(d) Delete batch element'
        print '(r) Run batch sequence'
        print '(a) Abort batch sequence'
        print
        menu = raw_input('Menu>')
        if menu == 'g':
            (batch_list, out_file_name) = read_batch_list_file(batch_list, batch_path='')
        elif menu == 'p':
            batch_path = raw_input('New Path>')
        elif menu == 'n':
            batch_list.append(BatchElement())
            element = batch_list[-1]
            element.path = batch_path
            element.file_name = raw_input(batch_path+'File Name>')
            num_ok = False
            while not num_ok:
                prompt = 'Number of runs of '+batch_path+element.file_name+'>'
                num_runs = raw_input(prompt)
                if num_runs.isdigit:
                    element.num_runs = int(num_runs)
                    num_ok = True
                else:
                    print 'please enter numeric values only'
            element.index = len(batch_list) - 1
        elif menu == 'd':
            num_ok = False
            while not num_ok:
                prompt = 'Index of batch element to excise>'
                number = raw_input(prompt)
                if number.isdigit:
                    victim_index = int(number)
                    num_ok = True
                    if victim_index < len(batch_list):
                        batch_list.pop(victim_index)
                        # now recalculate every one else's index
                        index = 0
                        for element in batch_list:
                            element.index = index
                            index += 1
                    else:
                        print number,'is out of range (not a valid index)'
                else:
                    print 'please enter numeric values only'
        elif menu == 'r':
            all_done = True
        elif menu == 'a':
            all_done = True
            batch_list = []  # init the batch list

    return (batch_list, out_file_name)

def batch_run(simulation):
    (batch_list, batch_out_file_name) = get_batch_list()
    if len(batch_list) > 0:
        # get batch outfile name from user
        if batch_out_file_name == '':
            # batch_out_file_name = raw_input('Batch run output file name (include path)>')
            batch_out_file_name = raw_input('Batch run output file name >')
        menu = raw_input('Compute mean RT? (y/n)')
        compute_mean_rt = (menu == 'y')
        # open output file
        dataTypes.out_file_name = dataTypes.current_directory+'Data/'+batch_list[0].path+batch_out_file_name+'.bat' # dataTypes.data_directory+batch_out_file_name+'.bat'
        dataTypes.out_file = open(dataTypes.out_file_name, 'w')
        dataTypes.out_file_open = True
        # turn graphics off
        # use_graphics = False
        simulation['use_graphics'] = False
        # run the batch list
        for batch_element in batch_list:
            rts = [] # for computing mean rt
            for i in xrange(batch_element.num_runs):

                # (0) set the file name and path
                dataTypes.file_name = batch_element.file_name
                dataTypes.file_path = current_directory+'Data/'+batch_element.path

                # (1) read the file
                dataTypes.file_in_memory = build.read_file(True) # (dataTypes.file_name, version_id, last_modified, True)

                # if success, set up various network variables
                # update the simulation dictionary
                if dataTypes.file_in_memory:
                    # (1.5) first, write the parameter values to the output file
                    dataTypes.out_file.write('\n')
                    dataTypes.out_file.write('* * * * * * * * * * * * * * * * * * * * * * * * * * * \n')
                    dataTypes.out_file.write('Batch: '+str(batch_element.num_runs)+' runs of '+batch_element.path+batch_element.file_name+'\n')
                    dataTypes.out_file.write('* * * * * * * * * * * * * * * * * * * * * * * * * * * \n')
                    dataTypes.out_file.write('\n')
                    outFile.write_parameter_values()
                    # (2) run the file
                    # (2.1) run the simulation blind
                    # (2.2) save the results to file (done at end of run())
                    # (2.3) dispose of inferred units (done at end of run())
                    print
                    print 'BATCH RUN',str(i+1),'/',str(batch_element.num_runs),'of',batch_element.path,batch_element.file_name
                    print
                    simulation = init_simulation()  # re-init the simulation!
                    dataTypes.out_file.write('\n')
                    dataTypes.out_file.write('* * * * * * * * * * * * * * * * * * * * * * * * * * * \n')
                    dataTypes.out_file.write('Run '+str(i+1)+' of '+batch_element.path+batch_element.file_name+'\n')
                    dataTypes.out_file.write('* * * * * * * * * * * * * * * * * * * * * * * * * * * \n')
                    dataTypes.out_file.write('\n')
                    run(simulation, True) # True here means batch run
                    if compute_mean_rt:
                        rts.append(simulation['total_iteration'])
                    if compute_mean_rt:
                        mean_rt = 0.0
                        sd_rt   = 0.0
                        # compute mean
                        for rt in rts:
                            mean_rt += rt
                        if batch_element.num_runs > 0:
                            mean_rt /= batch_element.num_runs
                        # compute sd
                        for rt in rts:
                            sd_rt += pow((mean_rt - rt), 2)
                        sd_rt = pow(sd_rt, 0.5)
                        # write to output file
                        dataTypes.out_file.write('\n')
                        dataTypes.out_file.write('---------------------------\n')
                        dataTypes.out_file.write('Mean RT = %.4f \n' % mean_rt)
                        dataTypes.out_file.write('Std Dev = %.4f \n' % sd_rt)
                        dataTypes.out_file.write('---------------------------\n')
                        dataTypes.out_file.write('\n')
                    # at the end of EACH run empty the memory
                    empty_memory()
                else: # if no file in memory
                    print 'No file "',dataTypes.file_name,'" found.  Batch run aborted.'
                    break

            # between separate files, dispose of all data structures: analogs, semantics, sequence
            dataTypes.analog = []
            dataTypes.sequence = []
            dataTypes.op_semantic = []
            dataTypes.group_semantic = []
            # between separate files, reinstate default parameters so that parameters
            # set for one file do not linger into next
            # NOTE that this measn that parameter values set in the LISA main menu
            #   WILL GET OVERWRITTEN!
            # NOTE ALSO that this works only for Ordinary Run Parameters (not dangerous ones)
            dataTypes.god_like_wm = False
            dataTypes.semantic_noise = 0.0
            dataTypes.semantic_death = 0.0
            dataTypes.attention = 1.0
            dataTypes.driver_inhibition = 1.0
            dataTypes.recip_inhibition = 1.0
            dataTypes.hebb_learning_rate = 1.0
            dataTypes.bail_upon_settling = False
            dataTypes.vers142_map_alg = True


    # dispose of the batch list
    batch_list = []
    # close the outfile
    # output saved to file at end of call to run().  Close output file
    if dataTypes.out_file_open:
        dataTypes.out_file.close()
        dataTypes.out_file_open = False


################# THIS IS THE MAIN BODY ################

menu_option = ''
dataTypes.file_in_memory = False
dataTypes.out_file_open  = False
simulation = init_simulation()

# * * * * * Here it is: The main loop * * * * *

all_done = False

while not all_done:

    # if dataTypes.file_in_memory: graphics.draw_all_names() # show any units in memory

    # draw the various GUI windows (in LISA_gui.py)
    # draw a gray bar at the top of the screen
    pygame.draw.rect(graphics_window,WHITE,(0,0,screen_width,menu_height+1))
    for window in windows:
        window.draw()
    pygame.display.update()

    # get user input
    menu_option = process_events(menus, status_window) # this code is in LISA_gui.py

    if   menu_option == ('LISA','Quit'):
        all_done = True
    elif menu_option == ('LISA','About'):
        about_text = about_LISA()
        status_window.add_messages(about_text)
    elif menu_option == ('File','Save Status Window'):
        status_window.save_to_file()
    elif menu_option == ('File','Open'):
        # NOTE: the function open_file() sets the value of dataTypes.sym_file_name
        if dataTypes.file_in_memory:
            status_window.add_message('Sorry, Jack, no can do.  Theres already a file in memory.')
            status_window.add_message('first execute the (E)mpty memory option')
        else:
            # navigate to the file
            open_file(100,30,status_window)
            # read the file
            dataTypes.file_in_memory = build.read_file(False) # False means 'not a batch run'  (dataTypes.file_name, version_id, last_modified, False)
            # if success, set up various network variables
            if dataTypes.file_in_memory:
                graphics.set_unit_locations()
                # update the simulation dictionary
                simulation = init_simulation()
                # update the window caption
                caption = 'LISA/DORA: '+dataTypes.file_path+dataTypes.file_name
                pygame.display.set_caption(caption)
            else:
                dataTypes.file_name = ''
                dataTypes.file_in_memory = False
    elif menu_option == (('Run','Graphic') or menu_option == ('Run','Blind')) and dataTypes.file_in_memory:
        simulation = init_simulation()
        simulation['use_graphics'] = menu_option[1] == 'Graphic'
        # open outfile if necessary
        if not dataTypes.out_file_open:
            dataTypes.out_file_name = dataTypes.data_directory+dataTypes.file_path+dataTypes.file_name+'.run'
            dataTypes.out_file = open(dataTypes.out_file_name, 'w')
            dataTypes.Out_file_open = True

        run(simulation, False) # False here means Not batch run

        # output saved to file at end of run().  Close output file
        if dataTypes.out_file_open:
            dataTypes.out_file.close()
            dataTypes.out_file_open = False
        # empty the memory but don't init the status window
        empty_memory()
        # init graphics variables
        if simulation['use_graphics']:
            dataTypes.graphics_window.fill(dataTypes.BLACK)
            # pygame.display.flip()
        # update the window caption
        caption = 'LISA/DORA: '+dataTypes.file_path+dataTypes.file_name
        pygame.display.set_caption(caption)

    elif menu_option == ('Run','Batch'):
        # * * * * * * * HERE: Write the routines to define a batch run * * * * *
        LISA_gui.pop_up_info_box('Click OK to enter batch info in shell.')
        batch_run(simulation)

    elif menu_option == ('File','View Network') and dataTypes.file_in_memory == True:
        build.show_network()

    elif menu_option == ('File','Go') and not dataTypes.file_in_memory:
        # Go: rapid run of preset file & path
        # (1) set u the filename and path
        dataTypes.file_name = go_dict['file_name'] # +'.sym' # HERE 9/30/13: Trying to eliminate dumbass adding of .sym to everything
        dataTypes.file_path = 'data/'+go_dict['path']
        simulation['use_graphics'] = go_dict['use_graphics']
        # use_graphics = go_dict['use_graphics']
        # (2) read the file
        dataTypes.file_in_memory = build.read_file(False) # build.read_file(dataTypes.file_name, version_id, last_modified, False)
        dataTypes.out_file_open = dataTypes.file_in_memory # note that the output file has been opened
        if dataTypes.diagnostics:
            build.show_network()
        # (3) if success, set up various network variables
        if dataTypes.file_in_memory:
            if simulation['use_graphics']:
                graphics.set_unit_locations()
            # update the simulation dictionary
            simulation = init_simulation()
            # update the window caption
            caption = 'LISA/DORA: '+dataTypes.file_path+dataTypes.file_name
            pygame.display.set_caption(caption)
        # Reset simulation['use_graphics'] AFTER you init simulation (cause init sets to false)
        simulation['use_graphics'] = go_dict['use_graphics']

        # (5) run the simulation
        if dataTypes.file_in_memory:
            run(simulation, False) # False means 'not a batch run'

        # output saved to file at end of run().
        # (6) Close output file
        if dataTypes.out_file_open:
            dataTypes.out_file.close()
            dataTypes.out_file_open = False
        # empty the memory but don't init the status window
        empty_memory()
        # init graphics variables
        if simulation['use_graphics']:
            dataTypes.graphics_window.fill(dataTypes.BLACK)
            # pygame.display.flip()
        # update the window caption
        caption = 'LISA/DORA: '+dataTypes.file_path+dataTypes.file_name
        pygame.display.set_caption(caption)

    elif menu_option == ('File','Empty Memory'):
        # first, close the output file
        if dataTypes.out_file_open:
            dataTypes.out_file.close()
            dataTypes.out_file_open = False
        # empty the memory
        empty_memory()
        # init graphics variables
        dataTypes.graphics_window.fill(dataTypes.BLACK)
##        if simulation['use_graphics']:
##            dataTypes.graphics_window.fill(dataTypes.BLACK)
##            # pygame.display.flip()
        # empty the contents of the status window
        status_window.set_messages([])
        # update the window caption
        caption = 'LISA/DORA: '+dataTypes.file_path+dataTypes.file_name
        pygame.display.set_caption(caption)

# * * * * End of main loop

if dataTypes.out_file_open:
    dataTypes.out_file.close()
    dataTypes.out_file_open = False

# close the screen
pygame.display.quit()
