# Explain.py
# created 9/25/07 for Vers Ex 1.02
# last modified 05/27/08
# functions and routines specifically for doing explanation in LISA

import dataTypes
import outFile
import os, random, sys, copy
import build, hebbs, outFile
import graphics
import LISA_gui


# the following code moves a group out of an analog's main group list
#   and into the analog's inhibited list
# this is a way to make sure LISA does not re-process groups that have
#   already been used for inference, explanation, etc.
# groups in the inhibited list are simply passed over in all of LISA's
#   operations as though they do not exist at all
# this function works recursively, call itself on all of the_groups's
#   member groups
# 10/26/07:
# a group's .processed boolean flag has been replaced with a re-valued
#    .refractory field: Same basic effect except that it allows us to
#    treat the .processsed status/.refractory effects stochastically
def move_to_inhibited_list(the_group):
    # idea is to pop the group off tha analog's .group list and append it to
    # the analog's inhibited list

    # 0) get a pointer to the group's analog
    the_analog = the_group.analog

    # 1) init the_group's state
    the_group.init_state()

    # 1.5) set the group's refractory to 1.0 (10/26/07)
    the_group.refractory = 1.0

    # 2) recursively move the group's sub-groups to the inhibited list
    for group_conn in the_group.group:
        move_to_inhibited_list(group_conn.unit)

    # 3) now move the group itself to the inhibited list
    # 3.1) first, check to make sure it's not already there
    if not the_group in the_analog.inhibited:
        # 3.2) add it to the inhibited list
        the_analog.inhibited.append(the_group)
        # DIAG
        if dataTypes.diagnostics:
            LISA_gui.status_window.add_message('added '+the_group.name+' to '+the_analog.name+'s inhibited list')
       
        # 3.3) pop the_group off the analog's list
        popped = the_analog.group.pop(the_group.index)
        # DIAG
        if dataTypes.diagnostics:
            LISA_gui.status_window.add_message(popped.name+' has been poppeed off '+the_analog.name+'s group list')

        # 3.4) recompute all the analog's groups' indices!
        for group in the_analog.group:
            group.get_index(the_analog.group)
        # 3.5) and recomputed the indices of the inhibited groups
        for group in the_analog.inhibited:
            group.get_index(the_analog.inhibited)

    # DIAG
    if dataTypes.diagnostics:
        print
        print 'Here is the current group list for analog',the_analog.name
        for group in the_analog.group:
            print '(',str(group.index),')',group.name
        print
        print 'Here is the inhibited group list for analog',the_analog.name
        for group in the_analog.inhibited:
            print '(',str(group.index),')',group.name
        print
    # end DIAG


# the following function moves a group OFF its analog's inhibited list
#   and back into its (active) group list, effectively putting it back into
#   the game
# this function is also recursive, removing a group and all its member
#   groups from the inhibited list
def move_off_inhibited_list(the_group):
    # pop the group off the analog's inhibited list and append it to
    # the analog's group list

    # 0) get a pointer to the group's analog
    the_analog = the_group.analog

    # 1) init the_group's state
    the_group.init_state()

    # 2) recursively move the group's sub-groups off the inhibited list
    for group_conn in the_group.group:
        move_off_inhibited_list(group_conn.unit)

    # 3) now move the group itself off the inhibited list
    # 3.1) first, check to make sure it's not already there
    if not the_group in the_analog.group:
        # 3.2) add it to the group list
        the_analog.group.append(the_group)
        # DIAG
        if dataTypes.diagnostics:
            print 'added',the_group.name,'to',the_analog.name,'s group list'
       
        # 3.3) pop the_group off the analog's list
        popped = the_analog.inhibited.pop(the_group.index)
        # DIAG
        if dataTypes.diagnostics:
            print popped.name,'has been poppeed off',the_analog.name,'s inhibited list'

        # 3.4) recompute all the analog's groups' indices!
        for group in the_analog.group:
            group.get_index(the_analog.group)
        # 3.5) and recomputed the indices of the inhibited groups
        for group in the_analog.inhibited:
            group.get_index(the_analog.inhibited)

    # DIAG
    if dataTypes.diagnostics:
        print
        print 'Here is the current group list for analog',the_analog.name
        for group in the_analog.group:
            print '(',str(group.index),')',group.name
        print
        print 'Here is the inhibited group list for analog',the_analog.name
        for group in the_analog.inhibited:
            print '(',str(group.index),')',group.name
        print
    # end DIAG
    
def disinhibit_groups(analog):
    # this function STOCHASTICALLY removes groups from an analog's
    # inhibited list
    #
    # first, it goes through and slightly decays all inhibited groups'
    #   refractories
    # then it goes through all the groups, compares each group's refractory
    #   to a random number [0...1] and if the random > the refractory,
    #   it removes the group from the inhibited list

    # 1) decay the inhibited groups' refratories
    for group in analog.inhibited:
        group.refractory *= 0.99   # YO! hidden parameter!

    # 2) randomly dis-inhibit groups
    for group in analog.inhibited:
        if random.random() > group.refractory:
            move_off_inhibited_list(group)

def add_prop_to_sequence(driver, recip, group, prop, goal_list, immediate_goal):
    # makes a new sequence element, adds the prop to it and sets its goal
    # returns that sequence element
    # for use by add_group_to_sequence, below
    #
    # first, figure out whether to turn ss learning on or off
    # this is based on whether your immediate goal is to retrieve oir infer
    if immediate_goal == 'INFER':
        ss_learn = 1   # sslearning on
    elif immediate_goal == 'RETRIEVE' or immediate_goal == 'MAP':
        ss_learn = -1  # sslearning off
        
    # if prop is None then this indicates random, group-based firing
    #   in this case control is 'groups'
    # if it is not None then this means it non-random group-based firing (new as of 3/4/08)
    #   in this case, control is 'groups-d' for 'groups, deterministic'
    if prop == None:
        control = 'groups'
    else:
        control = 'groups-d' # this means "groups, deterministic"
        
    # make the new sequence element with the right values of ss_learn and control
    # carry value of detect_anomalies from current last sequence element to the new one
    detect_anomalies = dataTypes.sequence[-1].detect_anomalies
    dataTypes.sequence.append(dataTypes.SequenceElement(driver,recip,control,ss_learn,False,True,goal_list))
    dataTypes.sequence[-1].detect_anomalies = detect_anomalies

    # name the new sequence element current_sequence
    current_sequence = dataTypes.sequence[-1]

    # get it's index
    current_sequence.get_index(dataTypes.sequence)
    
    # add the group to the sequence element's phase set
    current_sequence.phase_set.append(group)

    # ... and, if random, the number of props to fire randomly,
    # or, if non-random, the prop to fire, in the phase set field
    if prop == None:
        current_sequence.phase_set.append(1) # the 1 here is num props per phase
    else:
        current_sequence.phase_set.append(prop) # the 1 here is num props per phase
        
    # Tell the current sequence to update the hebbs when it's done
    current_sequence.update_hebbs = True
    
    # set the goal of these sequence elements to be inference or retrieval, first removing the
    #   previous goal
    if immediate_goal == 'INFER':
        current_sequence.pop_goal('MAP')
        current_sequence.pop_goal('RETRIEVE')
    elif immediate_goal == 'MAP':
        current_sequence.pop_goal('RETRIEVE')
        current_sequence.pop_goal('INFER')
    elif immediate_goal == 'RETRIEVE':
        current_sequence.pop_goal('INFER')
        current_sequence.pop_goal('MAP')

        
    # add the new immediate goal if it's not already on list
    if current_sequence.goal[-1] != immediate_goal:
        current_sequence.add_goal(immediate_goal)

    if dataTypes.diagnostics:
        # DIAG: To figure out what the fuck is up with that occasional perservation on INFER
        print
        print '* * * * *'
        print 'made a new sequence element based on group',group.name
        print 'sequence_element.index =',current_sequence.index
        if current_sequence.driver:
            print 'Driver:',current_sequence.driver.name
        else:
            print 'SEQUENCE ELEMENT HAS NO DRIVER!'
        if current_sequence.recip:
            print 'Recips:',
            for analog in current_sequence.recip:
                print analog.name,',',
            print
        else:
            print 'SEQUENCE ELEMENT HAS NO RECIPIENTS!'
        if type(current_sequence.phase_set[0]) == dataTypes.GroupUnit:
            print 'sequence_element.phase_set[0] = group',current_sequence.phase_set[0].name
        if type(current_sequence.phase_set[1]) == dataTypes.PropUnit:
            print 'sequence_element.phase_set[1] = prop',current_sequence.phase_set[1].name,': ',current_sequence.phase_set[1].pretty_name
        print 'sequence_element.goals =',
        for goal in current_sequence.goal:
            print goal,'  ',
        print
        print '* * * * *'
        # end DIAG
    

def add_group_to_sequence(driver, recip, group, goal_list, immediate_goal, random_firing_order=False):
    # makes a new sequence element for each prop in the group
    # sets the lowest-level goal for each sequence element to Goal
    # returns a list of last_sequence_elements
    # if random_firing_order, then do the props randomly;
    #   otherwise, just step methodically through them
    #
    #
    if dataTypes.diagnostics:
        print 'entering add_group_to_sequence with',group.name
        
    if random_firing_order:
        prop_count = group.num_props
        for sub_group in group.group:
            prop_count += sub_group.unit.num_props
        for i in xrange(int(prop_count*1.5)): # give it extra chances to fire props at random to cover all
            current_sequence = add_prop_to_sequence(driver, recip, group, None, copy.copy(goal_list), immediate_goal)
            last_sequence_elements.append(current_sequence.index)
    else:
        # add this group's props to the sequence
        for prop in group.prop:
            add_prop_to_sequence(driver, recip, group, prop.unit, copy.copy(goal_list), immediate_goal)
        # and now, recursively, add its sub-groups' props to the sequence
        for group2 in group.group:
            add_group_to_sequence(driver, recip, group2.unit, copy.copy(goal_list), immediate_goal)

def make_new_effect_groups(target_group):
    # take a target group, which is probably a CAUSE group, and copy its contents
    # into a new (to-be-explained) effect group
    #
    # new for version 1.11 (5/28/08): Only one prop per effect group;
    #                                 therefore have to make multiple effect groups if
    #                                 parent cause group has more than one prop
    new_groups = [] # this will be a list of the new group(s) created
    #
    # first, find the current analog
    current_analog = target_group.analog

    for prop in target_group.prop:
        # vers 1.11: Make a separate new effect group for each prop in the cause group
        #
        # first, figure out the name and type of each new group
        # in aid of figuring out the name, find any other groups named "effect" and count'em
        counter = 0
        for a_group in current_analog.group:
            this_name = dataTypes.strip_number(a_group.name)
            if this_name == 'Effect' or this_name == 'EFFECT' or this_name == 'EXPLANANDUM':
                # count this one
                counter += 1
        # counter should now be equal to the highest number associated with any effect group
        # add one to it and use it as the number of the new effect group
        counter += 1
        
        new_name = 'EFFECT'+str(counter)
        new_type = 'EFFECT'
        # make the group
        current_analog.group.append(dataTypes.GroupUnit(new_name, current_analog, new_type))
        new_group = current_analog.group[-1]

        new_group.get_index(current_analog.group)
        new_group.level = 0
        new_group.init_state()
        # mark it as inferred! (so it'll get saved to file)
        new_group.inferred = True
        # mark it as hypothesized
        new_group.truth_status = 'HYPOTHESIZED'
        # add its semantic unit
        semantic = build.find_group_semantic('EFFECT', True)
        new_group.add_semantic(semantic, 1.0)
        new_group.compute_weight_length()
        # add the current prop to the new_group
        new_group.prop.append(dataTypes.GroupConnector(prop.unit))
        # set up the group's hebb sets
        new_group.create_hebb_sets()
        # add the new group to hte list of new groups
        new_groups.append(new_group)
        
        if dataTypes.diagnostics:
            print
            print 'New',new_group.type,'group created!'
            print 'Group name:',new_group.name
            print 'Sub-groups:',
            for sub_group in new_group.group:
                print sub_group.unit.name,' ',
            if new_group.group == []:
                print 'NONE',
            print
            print 'Props:',
            for prop in new_group.prop:
                print prop.unit.name,':',prop.unit.pretty_name,', ',
            print
            print 'Semantics:',
            for semantic in new_group.semantic:
                print semantic.unit.name,
            print
            print 'Hebb sets to:',
            for hebb_set in new_group.hebb_set:
                print hebb_set.target.name
            print
            
    return new_groups

def give_control_to_cause_groups(current_sequence, simulation):
    # this function is called after LISA has mapped part of the expanandum to the potential source in the
    #   workspace
    # now we want to turn control over to the workspace and drive inference in the explanandum
    # the field 'cause_detected' in the simulation dictionary contains the detected potential cause

    # make the workspace the driver
    new_driver = dataTypes.workspace

    # and make the explanandum the new recipient
    # NOTE that for now (April, 08) ONLY the explanandum is in the recipient, precluding schema induction
    #  over the explanation.  If you ever want to permit schema induction, you'll have to be sure
    #  to include any other analogs that might serve as the locus of schema induction
    new_recip = []
    new_recip.append(dataTypes.explanandum)

    for group in dataTypes.workspace.group:
        # add the group (and its subgroups and their props) to the sequence list
        # this loop adding lower-level groups multiple times
        # try doing calling add_group... only on top-level groups
        # this little if statement rests on lots of assumptions: could lead to trouble later
        if group.level == 1:
            add_group_to_sequence(new_driver,new_recip,group,current_sequence.goal,'INFER')

    return False # meaning: do not quit

##    # DIAG: Show the complete list of sequence elements
##    print
##    print 'Complete sequence list:'
##    for element in dataTypes.sequence:
##        print element.index,')',
##        print 'driver:',element.driver.name,'  recip(s):',
##        for rec in element.recip:
##            print rec.name,
##        for prop in element.phase_set:
##            if type(prop) == dataTypes.TokenUnit:
##                print prop.name,
##        print
##    # end DIAG
##
##    # give user the opportunity to quit
##    menu = raw_input('Wanna quit now? (y/n)')
##    if menu == 'y':
##        return True
##    else:
##        return False

def return_control_to_explanandum(current_sequence, simulation, batch_run):
    # as written, this function returns control to the explanandum (presumably after the source
    # has had the opportunity to drive inference in same)
    #
    # 4/16/08
    # this will need reworking for vers Ex 1.08 to allow the explanandum to do mapping after
    #  having retrieved a potentially useful source from LTM into the workspace...
    #
    new_driver = dataTypes.explanandum
    new_recip = []
    # new_recip = simulation['source']
    # YO!!! The above will put all source analogs in the recip! Might be a mistake
    # Think: If the goal is to map, then the recip should be dataTypes.workspace (4/16/08, vers Ex 1.08)
    #        But if the goal is to retrieve, then the recip should be empty
    # HERE 4/16/08
    
    if dataTypes.diagnostics:
        print 'new_driver =',new_driver.name,
        print'   new_recip =',
        for analog in new_recip:
            print analog.name,
        print

    # now try to find an inferred Cause group in the new driver
    #   we will need to add more stringent constraints later, but for now...
    target_group = None
    for group in new_driver.group:
        if group.inferred:
            # check to see whether it's a cause group
            # if it is, then set it as the target
            # again, this is gonna need to be made Much more
            #   sophisticated.  But for now...
            if group.type == 'CAUSE' or group.type == 'ENABLES':
                # declare this group the target and break out of the loop
                target_group = group
                break # if target found then break out of loop
        
    # If you have a target group for further exploration, then
    #  make new sequence elements using its props
    if target_group:
        
        if dataTypes.diagnostics:
            print 'found a new target to explain:',target_group.name,'in analog',target_group.analog.name

        # now, embed rach prop in the target group in a new EFFECT group and drive retrieval with
        # one of those new effect groups, randomly chosen
        new_groups = make_new_effect_groups(target_group)

        # update the graphics
        if simulation['use_graphics']:
            graphics.set_unit_locations()
                
        # now add those effect groups to the analog's list of unexplained effects
        for group in new_groups:
            dataTypes.explanandum.unexplained_effects.append(group)

    # randomly choose one effect group from the analog's unexplained effects to explain
    if dataTypes.explanandum.unexplained_effects:
        # if there are any remaning unexplained effects...
        if len(dataTypes.explanandum.unexplained_effects) == 1:
            chosen_group = dataTypes.explanandum.unexplained_effects[0]  # if there's only one, then just choose it
        else:
            random_range = len(dataTypes.explanandum.unexplained_effects) - 1 # -1 cause last index is len - 1 (e.g., 3 for len of 4)
            chosen_index = int(round(random.random() * random_range))
            # choose the group and pop it off the list of unexplained effects
            chosen_group = dataTypes.explanandum.unexplained_effects.pop(chosen_index)
        
        # create new sequence elements to run the newly created effect group
        add_group_to_sequence(new_driver, new_recip, chosen_group,current_sequence.goal,'RETRIEVE')
            # agruments are: driver, recip, group, goal_list, immediate_goal)

        # DIAG: Show the complete list of sequence elements
        if dataTypes.diagnostics:
            print
            print 'Complete sequence list:'
            for element in dataTypes.sequence:
                print element.index,')',
                print 'driver:',element.driver.name,'  recip(s):',
                for rec in element.recip:
                    print rec.name,
                for prop in element.phase_set:
                    if type(prop) == dataTypes.TokenUnit:
                        print prop.name,
                print
        # end DIAG

        # unless it's a batch run, give user the opportunity to quit
        if batch_run:
            return [False, chosen_group] # False means "don't quit"
        else:
            quit_now = LISA_gui.pop_up_yes_no_question('Wanna quit now?','About to search for further explanation.')
            return [quit_now, chosen_group]

    else:
        LISA_gui.status_window.add_message('')
        LISA_gui.status_window.add_message('return_control_to_explanandum() failed to find a target group')
        LISA_gui.status_window.add_message('')
        return [True, None]

def retrieve_prop_from_LTM(simulation):
    # 10/02/08, vers Ex 1.12
    # stochastically retrieves at most one prop from LTM

    base_retrieval_sum = 1.0 # for making it possible to retrieve nothing

    # make a list of candidate props consisting of all groups in doemant analogs
    # then from that candidate list retrieve using the Luce Coice axiom
    candidate_props = []
    for analog in simulation['dormant']:
        for prop in analog.prop:
            candidate_props.append(prop)

    # the dart-board algorithm
    # 
    retrieval_sum = base_retrieval_sum # non-zero so there will be Some probability of retrieving nothing
    for prop in candidate_props:
        # now increment the priority sum
        if prop.integrator > 0:
            retrieval_sum += prop.integrator

    # SO: the retrieval sum gives you the "width" of the one-dimensional dart board
    #   at which you will randomly throw a dart: you're gonna choose a random point
    #   along that line, and then iterate again through the groups until the cumulative
    #   priority over all groups straddles that random target point

    # compute a target retrieval value: retrieval_sum * random number (0...1)
    target = random.random() * retrieval_sum

    # now go again through the props...
    retrieved_prop = None
    retrieval_sum = 0.0
    for prop in candidate_props:
        if prop.integrator > 0:
            if target >= retrieval_sum and target <= retrieval_sum + prop.integrator:
                # you've found the group whose cumulative priority straddles the target
                retrieved_prop = prop
                break
            else: # you have not yet found that prop: add its priority to the sum and keep looking
                retrieval_sum += prop.integrator

    # now return the retrieved prop, if there is one
    return retrieved_prop

# the function below obviated in vers ex 1.13
def retrieve_group_from_LTM(simulation):
    # 3/26/08
    # to stochastically retrieve groups from dormant analogs
    #
    base_retrieval_sum = 2.0 # 10.0 # 100.0 # for making it possible to retrieve nothing
    #
    # make a list of candidate groups consisting of all groups in doemant analogs
    # then from that candidate list retrieve using the Luce Coice axiom
    candidate_groups = []
    for analog in simulation['dormant']:
        for group in analog.group:
            candidate_groups.append(group)

    # NOTE: The (very serious) limitation of this algorithm is that is does not preferentially
    #       retrieve whole CE groups.  Instead, it is just as likeley to retrieve just and effect
    #
    # in order to bias retrieval in favor of whole CE groups (rather than just effect or cause groups)
    #   go through the groups and multiply their integrators by a function of their level
    # NOTE: This obviated 4/22/08 by the heavier-handed code below in step (5)
##    for group in candidate_groups:
##        group.integrator *= group.level

    # the dart-board algorithm:
    # 
    retrieval_sum = base_retrieval_sum # non-zero so there will be Some probability of retrieving nothing
    for group in candidate_groups:
        # now increment the priority sum
        if group.integrator > 0:
            retrieval_sum += group.integrator

    # SO: the retrieval sum gives you the "width" of the one-dimensional dart board
    #   at which you will randomly throw a dart: you're gonna choose a random point
    #   along that line, and then iterate again through the groups until the cumulative
    #   priority over all groups straddles that random target point

    # (3) compute a target retrieval value: retrieval_sum * random number (0...1)
    target = random.random() * retrieval_sum

    # (4) now go again through the goups...
    retrieved_group = None
    retrieval_sum = 0.0
    for group in candidate_groups:
        if group.integrator > 0:
            if target >= retrieval_sum and target <= retrieval_sum + group.integrator:
                # you've found the group whose cumulative priority straddles the target
                retrieved_group = group
                break
            else: # you have not yet found that prop: add its priority to the sum and keep looking
                retrieval_sum += group.integrator

    # (5) if you've retrieved a group and it's an effect or cause group (not a CE group), then retrieve
    #     not the group that won, but it's parent CE group
    done = False # when true, will break out of all loops
    if retrieved_group:
        # if you've got a lower-level group...
        if retrieved_group.type in ['CAUSE','EFFECT','ENABLER','ENABLED']:
            # ... then try to find its parent and retrieve that instead
            for group in candidate_groups:
                # check to see whjether group is A parent group...
                if group.type in ['CAUSAL','ENABLING']:
                    #... check to see whether it's the parent of retrieved_group
                    for group_conn in group.group:
                        if group_conn.unit == retrieved_group:
                            # group is the parent!  retrieve it and announce that you're done
                            retrieved_group = group
                            done = True
                            break
                        if done: break
                if done:break

    # (5.5) Report the retrieved group to screen and output file
    LISA_gui.status_window.add_message('Retrieved group '+retrieved_group.name+'in analog'+retrieved_group.analog.name)
    dataTypes.out_file.write('Retrieved group '+retrieved_group.name+' in analog '+retrieved_group.analog.name+'.\n')
                                               

    # (6) init the groups' integrators
    for group in candidate_groups:
        for prop in group.prop:
            prop.integrator = 0
        for gr2 in group.group:
            gr2.integrator = 0
            for prop in gr2.unit.prop:
                prop.integtrator = 0

    # (7) Return group
    return retrieved_group

def impose_hebb_inhibition(unit_list):
    # sets the inhibitor on the hebb set (to the workspace) of a unit in the explanandum to 1.0
    # the purpose here is to tell unitsin the explanandum when they already map to stuff and
    #   should therefore be inhibited (for ssl) when stuff fires in the workspace
    if dataTypes.diagnostics:
        print
        print '* * * * * * * * * * * * * * * * *'
        print 'Imposing Hebb Inhibition on...'
    for unit in unit_list:
        if dataTypes.diagnostics:
            print unit.name,'  ',
        
        for hebb_set in unit.hebb_set:
            # find the hebb set corresponding to the workspace and set the inhibitor on that hebb set to 1.0
            # then update the max_hebb on the hebb set
            if hebb_set.target == dataTypes.workspace:
                hebb_set.inhibitor = 1.0
                hebb_set.update_max_hebb()
    if dataTypes.diagnostics:
        print
        print '* * * * * * * * * * * * * * * * *'
        print

def clear_workspace(simulation):
    # (a) dispose all data structures in the workspace and ALL hebbs (this may have to change to
    #     'only those hebbs that refer to the workspace')
    # (b) impose hebb inhibition on all units in the explanandum so that ssl from the workspace
    #     to the explanandum can work in spite of not all units in the explanandum mapping to units
    #     in the workspace
    # (c) this inhibition will be released below for those units that are members of
    #     the most recent effect (i.e., the latest to-be-explained)group
    
    # (1) Dispose ALL hebbs and all hebb-related structures EXCEPT hebb sets
    hebbs.dispose_all_hebbs()
    #
    # (2) dispose all units in the workspace
    dataTypes.workspace.group = []
    dataTypes.workspace.prop = []
    dataTypes.workspace.sp = []
    dataTypes.workspace.pred = []
    dataTypes.workspace.obj = []
    # (3) update the graphics
    if simulation['use_graphics']:
        graphics.set_unit_locations()
    # (4) impose hebb-based inhibition on all units in the explanandum
    impose_hebb_inhibition(dataTypes.explanandum.group)
    impose_hebb_inhibition(dataTypes.explanandum.prop)
    impose_hebb_inhibition(dataTypes.explanandum.sp)
    impose_hebb_inhibition(dataTypes.explanandum.pred)
    impose_hebb_inhibition(dataTypes.explanandum.obj)
    
def release_from_hebb_inhibition(group):
    # 4/18/08, Vers Ex 1.08
    #
    # clear_workspace(), above, inits all units in the workspace AND inits the hebbs
    #   EXCEPT that it leaves the max_hebb values on the units in the explanandum in place.
    # The reason for leaving the max_hebbs in place is to prevent them from mapping to
    #   the next set of units to enter the workspace (instead, we want the workspace to
    #   inhibit them via their max_hebbs in the service of driving SSL an thus inference
    #   in the explanandum).
    # The one exception to this-leave-hebb-inhbition-in-place rule is
    #   the subset of the explanandum (the group) that is going to drive retrieval of the next
    #   workspace: This piece of the explanandum needs to be free to map anew to whatever
    #   units end up getting retrieved into the workspace.
    #   Given the current
    # This function serves to init the max_hebb values on only those units

##    # DIAG
##    print
##    print '* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *'
##    print 'I am about to release',group.name,'(',group,') and its units from hebb inhibition.'

    # the group itself
    for hebb_set in group.hebb_set:
        if hebb_set.target == dataTypes.workspace: hebb_set.release_from_inhibition()
            
    # its props and their parts
    for pr_conn in group.prop:
        # the props
        for hebb_set in pr_conn.unit.hebb_set:
            if hebb_set.target == dataTypes.workspace: hebb_set.release_from_inhibition()
            
        # the sps
        for sp in pr_conn.unit.SPs:
            for hebb_set in sp.hebb_set:
                if hebb_set.target == dataTypes.workspace: hebb_set.release_from_inhibition()
                
            # the pred
            if sp.pred:
                for hebb_set in sp.pred.hebb_set:
                    if hebb_set.target == dataTypes.workspace: hebb_set.release_from_inhibition()
                    
            # the obj
            if sp.obj:
                for hebb_set in sp.obj.hebb_set:
                    if hebb_set.target == dataTypes.workspace: hebb_set.release_from_inhibition()
                    
            # the child prop
            if sp.child_prop:
                for hebb_set in sp.child_prop.hebb_set:
                    if hebb_set.target == dataTypes.workspace: hebb_set.release_from_inhibition()
                    
    # recursively do its subgroups
    for gr_conn in group.group:
        gr_conn.unit = release_from_hebb_inhibition(gr_conn.unit)

    return group

def copy_OP_semantics(new_op, old_op):
    for sem_link in old_op.semantic:
        new_op.add_semantic(sem_link.unit, sem_link.weight)

def prop_already_in_workspace(target_prop):
    # checks to see whether a prop with the same name as the target_prop already
    #   exists in the workspace.
    # used by copy_prop_into_workspace() below to avoid reduplication of props that
    #   serve as the arguments to other props
    # if the target_prop IS already in the workspace, this function returns a pointer
    #   to it.  If it's not, then it returns None (which acts as logical False)
    result = None
    for prop in dataTypes.workspace.prop:
        if prop.name == target_prop.name:
            result = prop
            break
    return result

def op_already_in_workspace(target_op):
    # checks to see whether an op with the same name as the target_op already
    #   exists in the workspace.
    # used by copy_prop_into_workspace() below to avoid reduplication of ops that
    #   serve as the arguments to multiple props
    # if the target_op IS already in the workspace, this function returns a pointer
    #   to it.  If it's not, then it returns None (which acts as logical False)
    result = None
    if target_op.type == 'Obj': search_list = dataTypes.workspace.obj
    elif target_op.type == 'Pred': search_list = dataTypes.workspace.pred
    else: LISA_gui.status_window.add_message('WARNING: OP'+target_op.name+', passed to op_already_in_workspace() has illegal type:'+str(target_op.type))
    for op in search_list:
        if op.name == target_op.name:
            result = op
            break
    return result
    

def copy_prop_into_workspace(prop, parent_group=None):
    # 4/15/08
    # a recursive function that copies a prop and all of its structures into the workspace
    #
    workspace = dataTypes.workspace # give the workspace a local variable name
    
    # make the prop unit in the workspace
    workspace.prop.append(dataTypes.PropUnit(prop.name, workspace))
    # name the new prop
    new_prop = workspace.prop[-1]
    # and get its properties
    new_prop.get_index(workspace.prop)
    new_prop.create_hebb_sets()
    new_prop.pretty_name = prop.pretty_name

    # 2.1) now the SPs...
    for sp in prop.SPs:
        workspace.sp.append(dataTypes.SPUnit(sp.name, workspace))
        new_sp = workspace.sp[-1]
        new_sp.get_index(workspace.sp)
        new_sp.create_hebb_sets()
        # attach the SP to its parent prop unit
        new_prop.SPs.append(new_sp)
        # and attach the prop to its SP
        new_sp.parent_prop = new_prop
        # and the SP's parts...
        # 2.1.1) pred
        if sp.pred: # only do this if the (old) sp has a pred unit
            # if the pred is already in the workspace, then just get it and attach it to the SP
            new_pred = op_already_in_workspace(sp.pred)
            # otherwise, create it and attached it to the SP
            if new_pred == None:
                workspace.pred.append(dataTypes.OPUnit(sp.pred.name, workspace, 'Pred'))
                new_pred = workspace.pred[-1]
                new_pred.get_index(workspace.pred)
                new_pred.create_hebb_sets()
                # copy the semantic representatiopn of the old pred into the new pred
                copy_OP_semantics(new_pred, sp.pred)
            # attach new pred to new sp
            new_sp.pred = new_pred
        # 2.1.2) obj, if any
        if sp.obj:
            # if the pred is already in the workspace, then just get it and attach it to the SP
            new_obj = op_already_in_workspace(sp.obj)
            # otherwise, create it and attached it to the SP
            if new_obj == None:
                workspace.obj.append(dataTypes.OPUnit(sp.obj.name, workspace, 'Obj'))
                new_obj = workspace.obj[-1]
                new_obj.get_index(workspace.obj)
                new_obj.create_hebb_sets()
                copy_OP_semantics(new_obj, sp.obj)
            # attach new obj to new sp
            new_sp.obj = new_obj
        # 2.1.3) child prop, if any
        if sp.child_prop:
            # Be careful here, john!  The above If is to avoid reduplicating props!
            # And be careful again: Whether it's already in the workspace or not, you
            # must point it at its parent sp
            child_prop = prop_already_in_workspace(sp.child_prop)
            if child_prop == None:
                # i.e., if the child prop does not already exist in the workspace,
                # then copy it into teh workspace and return it
                child_prop = copy_prop_into_workspace(sp.child_prop, parent_group)
            # attach the child_prop to the new_sp and vice-versa
            new_sp.child_prop = child_prop
            child_prop.parent_sps.append(new_sp)
        
    # append the new_prop to the new_group
    parent_group.prop.append(dataTypes.GroupConnector(new_prop))

    return new_prop

def copy_group_into_workspace(group, parent_group=None):
    # 4/15/08 for vers ex 1.08:
    # This is the current incarnation (or replacement) of  dynamic schema construction:
    #   takes a group that has been retrieved from LTM and copies it into the workspace
    #   (i.e., the current stand-in for the dynamic schema) to prepare it for mapping
    #
    # This function will be called recursively, setting up the top level group, its props
    #   and their structures and, recursively, their groups
    #
    workspace = dataTypes.workspace # create a local pointer to the workspace analog

    # 1) copy in the group, naming and typing it after group
    workspace.group.append(dataTypes.GroupUnit(group.name, workspace, group.type, group.truth_status))
    new_group = workspace.group[-1]
    # get the new group's properties
    new_group.get_index(workspace.group)
    new_group.create_hebb_sets()

    # 2) copy the group's semantics, level and truth status
    for sem_conn in group.semantic:
        new_group.add_semantic(sem_conn.unit, sem_conn.weight)
    new_group.level        = group.level
    new_group.truth_status = group.truth_status

    # 3) copy in the group's props, if any
    for prop in group.prop:
        if not(prop_already_in_workspace(prop.unit)):
            copy_prop_into_workspace(prop.unit, new_group)

    # 4) recursively copy in the group's sub-groups
    for group2 in group.group:
        copy_group_into_workspace(group2.unit, new_group)

    # 5) iff a parent group was passed into this function along with group, then add new_group to
    #    the parent's group list
    if parent_group:
        parent_group.group.append(dataTypes.GroupConnector(new_group))

def show_contents_of_workspace():
    # a diagnostic function to make sure the phase set consists of sensible, well-connected stuff
    print
    print
    print ' * * * * * The WorkSpace * * * * * * * *'
    for group in dataTypes.workspace.group:
        print
        print '----------------'
        print 'Group',group.name
        print 'Subgroups:',
        for gr_conn in group.group:
            print gr_conn.unit.name,' ',
        print
        print 'Props:'
        for pr_conn in group.prop:
            print pr_conn.unit.name,')',pr_conn.unit.pretty_name
            for sp in pr_conn.unit.SPs:
                print '    ',sp.name,':',
                if sp.pred: print sp.pred.name,'+',
                else: print 'NO PRED',
                if sp.obj: print sp.obj.name
                elif sp.child_prop: print sp.child_prop.name,':',sp.child_prop.pretty_name
                else: print 'NO ARGUMENT'
    print '------ Preds -------'
    for pred in dataTypes.workspace.pred:
        print pred.name,':',
        for sem_conn in pred.semantic:
            print sem_conn.unit.name,' ',
        print
    print '------ Objs -------'
    for pred in dataTypes.workspace.obj:
        print pred.name,':',
        for sem_conn in pred.semantic:
            print sem_conn.unit.name,' ',
        print
    print ' * * * * * * * * * * * * * * * * * * * *'

def flow_of_control(simulation,retrieved_group_list,batch_run):
    # Does top-level flow of control for explanation:
    # Based on LISA's current goal and the status of various variables,
    #   switches round whose's driver, who's recipient, etc.
    # These routines used to be (i.e., in versions Ex 1.06 and earlier)
    #   housed in LISA.py, Run().
    # Moved into explain.py for version Ex 1.07 4/1/08
    #
    # rather than operating as a function that takes the sequence as an argument, modifying it
    #   and returning it, this function, and those it calls simply directly talk to dataTypes.sequence
    #   (this is done in the bottom-most function, add_prop_to_sequence())

    quit_simulation = False

    # Figure out whether we need to switch flow of control based on lowest-level goal
    #  in the current sequence element

    # 1) if the current goal is to retrieve, then attempt to retrieve a cause group from LTM
    #      (i.e., dormant analogs)
    #    if you get one, then copy it into the workspace and set the goal to 'MAP'
    if simulation['sequence'].goal[-1] == 'RETRIEVE':
        # obviated in vers 1.13: simulation['cause_detected'] = retrieve_group_from_LTM(simulation)
        # now, cause_detected will either be None or a pointer to a cause group
        # For now, if it's None, then just quit; later, failing to find a cause group
        #    will be a cue to attempt to elaborate the explanandum.  But for now (4/15/08)...
        if retrieved_group_list == []:
            LISA_gui.status_window.add_message('')
            LISA_gui.status_window.add_message('No causes detected.  Simulation ending.')
            LISA_gui.status_window.add_message('')
            quit_simulation = True
        else:
            # you have retrieved at least one group: copy them into the workspace and set the workspace to the
            #   recipient and the explanandum to the driver
            for group in retrieved_group_list:
                copy_group_into_workspace(group)

            # DIAG
            # show_contents_of_workspace()
            
            # update the graphics
            if simulation['use_graphics']:
                graphics.set_unit_locations()
            #
            # make a new sequence element with the explanandum as the driver and the
            # immediate goal as mapping
            #
            # in aid of that, we first need to get a pointer to the top-level group that served as the driving group
            # in the Last sequence element: It was used for retrieval, now let's use it for mapping.
            # So.  with that in mnd, find that control group
            control_group = None
            highest_group_level = -1
            for group in simulation['phase_set']['groups']:
                if group.level > highest_group_level:
                    control_group = group  # make this group the controller (for now)
                    highest_group_level = group.level # update highest group level
            #
            # now make the new sequence element
            if control_group == None: # if you failed to find a contro group, report error
                LISA_gui.status_window.add_message('* * * * * * * * * * * * * * * * * * * * *')
                LISA_gui.status_window.add_message('PROBLEM in explain.py, flow_of_control():')
                LISA_gui.status_window.add_message('I failed to find a control_group in the explanandum!')
                LISA_gui.status_window.add_message('* * * * * * * * * * * * * * * * * * * * *')
                quit_simulation = True
            else: # otherwise, make the new sequence element(s) with the group in control
                # if the previous sequence element is directed to detect anomalies, then set this one to do so also
                # detect_anomalies = simulation['sequence'].detect_anomalies
                add_group_to_sequence(dataTypes.explanandum, [dataTypes.workspace],control_group,
                                      copy.copy(simulation['sequence'].goal), 'MAP') # <-- pass in a copy of the current goals, not a pointer
                # Arguments are: driver, recip, group, goal_list, immediate_goal
                # dataTypes.sequence[-1].detect_anomalies = detect_anomalies
                # The risky code above: Goal here is to drive using the same group as drove retrieval
                #  last time.
                #
                # if the higest-level goal is VERIFY tag the last sequence element as needing to detect
                #  anomalies
                if dataTypes.sequence[-1].goal[0] == 'VERIFY':
                    dataTypes.sequence[-1].detect_anomalies = True
                    # AND add ANOTHER sequence element w/ thing to verify as driver
                    # so that LISA can USE the mappings it learns in the one you last created
                    add_group_to_sequence(dataTypes.explanandum, [dataTypes.workspace],control_group,
                                          copy.copy(simulation['sequence'].goal), 'MAP') # <-- pass in a copy of the current goals, not a pointer
                    # and note that it should detect anomalies
                    dataTypes.sequence[-1].detect_anomalies = True
            
            # quit_simulation = give_control_to_cause_group(current_sequence, simulation)
            # the code below commented out 11/13/08 (obviated?)
            # last_cause_detected = simulation['cause_detected']
            # simulation['cause_detected'] = None

    # 2) if you've just been mapping, switch the goal to infer, placing the workspace in the driver and the
    #    explanandum into the recipient
    elif simulation['sequence'].goal[-1] == 'MAP' and simulation['sequence'].goal[0] in ['EXPLAIN','PREDICT','SOLVE']:
        # if the current goal has been to map then we need to turn control over to the cause group
        # in the workspace and make the explanandum the recipient
        # also, carry value of detect_anomalies over to next sequence element
        # detect_anomalies = simulation['sequence'].detect_anomalies
        quit_simulation = give_control_to_cause_groups(simulation['sequence'], simulation)
        # dataTypes.sequence[-1].detect_anomalies = detect_anomalies

    # 3) otherwise, if you've been inferring stuff and the current sequence element is the Last one (i.e., you're
    #   at the end of the sequence list), then pass control back to the explanandum and try to infer the
    #   cause of the most recently inferred cause
    #
    elif simulation['sequence'].goal[-1] == 'INFER'and simulation['sequence'] is dataTypes.sequence[-1]:
        #
        # before clearing the workspace, save intermediate results to output file
        if not(batch_run):
            outFile.save_intermediate_results()
        
        # 3.0) clear the workspace
        clear_workspace(simulation)
        
        # update the graphics
        if simulation['use_graphics']:
            graphics.set_unit_locations()
        
        # 3.1) put groups in last_cause_detected on inhibited list
        # in a few lines, you're gonna move the recently processed groups to the
        #   analog's inhibited list
        # but before you do that, decay the refractories of and stochastically
        #   dis-inhibit any groups that are already on the inhibited list
        # do this for all potential source analogs
        for analog in simulation['source']:
            disinhibit_groups(analog)
        #
        # Now... move the group(s) in last_cause_detected into the inhibited list
        #       and set their refractory values to 1.0
        for group in retrieved_group_list:
            move_to_inhibited_list(group)
        # move_to_inhibited_list(last_cause_detected)
        
        # ... and then init the last_cause_detected list:
        # 11/13/08: Is the code below obviated, or should
        #   I be initializing the retrieved_group_list ?  (seems like it's obviated)
        # last_cause_detected = []

        # 2.2) turn control over to the explanandum
        # also, carry value of detect_anomalies over to next sequence element
        # detect_anomalies = dataTypes.sequence[-1].detect_anomalies
        [quit_simulation, new_effect_group] = return_control_to_explanandum(simulation['sequence'], simulation, batch_run)
        # dataTypes.sequence[-1].detect_anomalies = detect_anomalies

        # 3) Release the next phase set from hebb-based inhiition to allow mapping.
        #    At this point, the next phase set will contain the new_effect_group returned from the
        #      call to return_control...() above
        if new_effect_group:
            new_effect_group = release_from_hebb_inhibition(new_effect_group)

##    return [last_cause_detected, quit_simulation]
    return [quit_simulation]
