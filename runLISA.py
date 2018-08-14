# RunLISA: Does all the updating of the network, etc.
import dataTypes
import hebbs
import math
import random
import ssLearn  # self-supervised learning
import LISA_gui

def init_all_inputs(simulation):
    # inits all inputs to all units in all analogs
    for analog in dataTypes.analog:
        for group in analog.group:
            group.init_input(simulation['global_inhibition'])
        for prop in analog.prop:
            # 8/24/07: Subject parent props to SP-based refresh under unlimited WM ONLY
            if dataTypes.god_like_wm or prop.mode < 1: # or not(simulation['top_down_ok']):
                prop_refresh = simulation['global_inhibition']
            else:
                prop_refresh = 0.0 # under regular WM, spare parent props from SP refresh
            prop.init_input(prop_refresh) # less inhib for parents
        for sp in analog.sp:
            sp.init_input(simulation['global_inhibition'])
        for pred in analog.pred:
            pred.init_input(simulation['global_inhibition'])
        for obj in analog.obj:
            obj.init_input(simulation['global_inhibition'])
    # init inputs to all semantics
    for sem in dataTypes.group_semantic:
        sem.input = 0.0
    for sem in dataTypes.op_semantic:
        sem.input = 0.0
    # for vers 104 (should go into 103 as well): Init semantic activations when SP refresh fires
    # (recall that the semantics now talk directly to one another)
    if simulation['global_inhibition'] < 0:
        for sem in dataTypes.group_semantic:
            sem.act = 0.0
        for sem in dataTypes.op_semantic:
            sem.act = 0.0
            
def init_network_state(simulation):
    # init all inputs, activations, modes and inhibitors of ALL units
    # inits all analogs' infant pointers to None
    # inits the hebb units' everything except their weights
    # call, e.g., at beginning of phase set
    
    for analog in dataTypes.analog:
        for group in analog.group:
            group.init_state()
        for prop in analog.prop:
            prop.init_state()
        for sp in analog.sp:
            sp.init_state()
        for pred in analog.pred:
            pred.init_state()
        for obj in analog.obj:
            obj.init_state()
        # init the analog's infants to NIL
        # analog.infant_group = None
        # before growing up any infant prop, give it a pretty name
        if analog.infant_prop:
            analog.infant_prop.get_pretty_name()
            analog.infant_prop =  None
        analog.infant_sp =    None
        analog.infant_pred =  None
        analog.infant_obj =   None
        
    # init inputs to and activations of all semantics
    for sem in dataTypes.group_semantic:
        sem.init_state()
    for sem in dataTypes.op_semantic:
        sem.init_state()

    # init hebb units
    for h_unit in dataTypes.hebb_unit:
        h_unit.init_state()

##    # set top-down OK to false
##    simulation['top_down_ok'] = False
##    simulation['retrieval_ok'] = False
    # set top-down OK to false
    simulation['top_down_ok'] = True # HERE 10/14/13
    simulation['retrieval_ok'] = False

def update_modes(driver, recip_analogs):
    # updates the modes of al props in all recipient analogs

    # 5/20/07
    # This logic is screwed up: It assumes that bu and td input have already been computed
    #   but that hebb input has NOT yet been computed

    # (1) gather hebb-based evidence: hebb weght * act * mode of sending prop
    #     do all this from the perspective of the driver
    #
    # we will Temporarily store the hebb contribution to mode in a prop's hebb
    #   input field for te purposes of this function, but then we Must re-init to zero
    #
    for prop in driver.prop:   # from all the props in the driver...
        for h_set in prop.hebb_set: # via alltheir hebb sets...
            if h_set.target in recip_analogs: # provided the target analog is a recipient
                for hebb in h_set.hebbs:  # then fr each hebb in that hebbset...
                    hebb.recip.hebb_input += prop.mode * prop.act * hebb.h_unit.weight

    # (2) gather evidence from SPs above and below one self and add to hebb-based evidence
    for analog in recip_analogs:
        for prop in analog.prop:
            bu_input = 0
            td_input = 0     # <--- there it was: we were erasing global inhib from props
            # evidence from above
            for SP in prop.parent_sps:
                td_input += SP.act
            # evidence from below
            for SP in prop.SPs:
                bu_input += SP.output
            # (3) and combine all evidence to set mode
            evidence = prop.hebb_input + bu_input - td_input
            if evidence > 0.01:
                prop.mode = 1
            elif evidence < -0.01:
                prop.mode = -1
            # (4) Now erase hebb-based input
            prop.hebb_input = 0

def update_driver_as_DORA(simulation):
    # 2/20/08 for vers Ex 1.05
    #
    # Updates the driver as DORA, i.e,. firing objs & preds out of synch
    # created from god_like_update_driver_inputs
    #
    # Toggle through the SPs in the phase set in order, firing each one for
    #   iterations_per_sp iterations, then move on to the next
    # Within each SP, toggle through preds then objs
    #
    # can eventually go through multiple levels of hierarchical prop together...
    #   ... but let's not muck with that right now
        
    if simulation['phase_iteration'] >= dataTypes.phase_duration - 1:
        # if this is the END of the current SP's reign, then
        #   time to move onto the next SP...

        # (0) Note that the current SP[0] has fired
        simulation['phase_set']['sps'][0].times_fired += 1

        # 1) de-activate the current SP (activate its inhibitor) and move to the next
        #    do this by moving the current SP to the end of the list
        #    activating the (new) first SP and de-activating all others

        # (1.1) de-activate and init inputs of All SPs
        for sp in simulation['phase_set']['sps']:
            sp.act = 0.0
            sp.td_input = 0.0
            sp.bu_input = 0.0
            sp.lat_input = 0.0
            
        # (1.2) activate inhibitor of sp[0] (the one that Was active until now)
        # simulation['phase_set']['sps'][0].inhibitor = -10 # necessary? no.

        # (1.3) inhibit its pred & argument
        simulation['phase_set']['sps'][0].pred.td_input = -10.0
        if not(simulation['phase_set']['sps'][0].obj == None):
            simulation['phase_set']['sps'][0].obj.td_input = -10.0
        if not(simulation['phase_set']['sps'][0].child_prop == None):
            simulation['phase_set']['sps'][0].child_prop.td_input = -10.0

        # (1.4) pop it to the end of the list
        simulation['phase_set']['sps'].append(simulation['phase_set']['sps'].pop(0))
        # The logic of the above: sp.pop(0) pops the first sp off the list & returns it.
        # Being so returned, it gets appended to the end of the list sp.

        # (1.4) give excitatory input to the new head of the list
        simulation['phase_set']['sps'][0].td_input = 1.0

        # activate the global inhibitor
        simulation['global_inhibition'] = -100.0  # -10.0

        # set phase iteration to zero again
        simulation['phase_iteration'] = 0

    elif simulation['phase_iteration'] >= dataTypes.phase_duration - 3:
        # activate the global inhibitor early
        simulation['global_inhibition'] = -100.0  # -10.0
        

    else:  # not the last iteration of the phase
        # give (only) the currently-active SP a non-zero input
        # said SP will be the oth one in the list
        simulation['phase_set']['sps'][0].td_input = 1

        # (2) spread activation around...  (NOTE: implicit connection wts of 1.0!)
        # (2.1) from sp to parent prop
        simulation['phase_set']['sps'][0].parent_prop.bu_input += simulation['phase_set']['sps'][0].act
        # set its mode (5/30/07: This was not gettng done and was why ssl was misbehaving)
        simulation['phase_set']['sps'][0].parent_prop.mode = 1

        # DEactivate the global inhibitor
        simulation['global_inhibition'] = 0

        # THIS is where DORA comes in:
        #    if we're in the first half of the phase,
        #      i.e., simulation['phase_iteration'] < dataTypes.phase_duration/2,
        #      then the SP excites its pred and inhibits its argument
        #    otherwise, the SP excites its argument and inhibits its pred
        
        # (2.2) to pred in first half of phase
        if simulation['phase_iteration'] < (dataTypes.phase_duration/2 - 1):
            # (2.2.1) SP to pred: excitation
            simulation['phase_set']['sps'][0].pred.td_input += simulation['phase_set']['sps'][0].act
            # (2.2.2) to pred semantics
            for sem_link in simulation['phase_set']['sps'][0].pred.semantic:
                sem_link.unit.input += sem_link.weight * simulation['phase_set']['sps'][0].act
            # (2.2.3a) SP to Obj: inhibition
            if simulation['phase_set']['sps'][0].obj:
                simulation['phase_set']['sps'][0].obj.td_input -= 5 * simulation['phase_set']['sps'][0].act
            # (2.2.3b) SP to Child Prop: inhibition
            if simulation['phase_set']['sps'][0].child_prop:
                simulation['phase_set']['sps'][0].child_prop.td_input -= 5 * simulation['phase_set']['sps'][0].act
                
        elif simulation['phase_iteration'] >= (dataTypes.phase_duration/2 - 1) \
             and simulation['phase_iteration'] < (dataTypes.phase_duration/2 + 2):
            # at transition from pred to obj, inhibit both and send refresh signal to recipients
            # (1a) SP to Obj: inhibition
            if simulation['phase_set']['sps'][0].obj:
                simulation['phase_set']['sps'][0].obj.td_input -= 10 * simulation['phase_set']['sps'][0].act
            # (1b) SP to Child Prop: inhibition
            if simulation['phase_set']['sps'][0].child_prop:
                simulation['phase_set']['sps'][0].child_prop.td_input -= 10 * simulation['phase_set']['sps'][0].act
            # (2) SP to pred: inhibition
            simulation['phase_set']['sps'][0].pred.td_input -= 10 * simulation['phase_set']['sps'][0].act
            # global inhibition at the level of OPs only
            simulation['global_inhibition'] = -100.0
            
        # (2.3) to argument in second half of phase
        else:
            # (2.3.1a) SP to obj (if is one)
            if simulation['phase_set']['sps'][0].obj:
                simulation['phase_set']['sps'][0].obj.td_input += simulation['phase_set']['sps'][0].act
                # (2.3.1a.1) to obj semantics
                for sem_link in simulation['phase_set']['sps'][0].obj.semantic:
                    sem_link.unit.input += sem_link.weight * simulation['phase_set']['sps'][0].obj.act
            # (2.3.1b) SP to child prop (if is one) 
            if simulation['phase_set']['sps'][0].child_prop:
                simulation['phase_set']['sps'][0].child_prop.td_input += simulation['phase_set']['sps'][0].act
                simulation['phase_set']['sps'][0].child_prop.mode = -1 # set its mode
            # (2.3.1) SP to pred: inhibition
            simulation['phase_set']['sps'][0].pred.td_input -= 5 * simulation['phase_set']['sps'][0].act

        # (2.6) to groups
        for group in simulation['phase_set']['groups']:
            # from other groups
            for group_b in group.groups:
                # recall that groups are connected to child groups and to props by
                # GroupConnector, which has the fields .unit, which is the unit, and .integrator,
                # which integrates the units activation over a temporal window.
                # Thus "group_b" is not actually a group, but a GroupConnector connected to a group
                # Update the integrator and collect input, not from the child group, but from the
                # integrator
                if group_b.unit.retrieved:
                    group_b.integrator = 1.0
                group.bu_input += group_b.integrator  # YO!  Implicit weight of 1.0!
            # from props
            for prop in group.prop:
                # the same GroupConnector logic described above also applies to props
                if prop.unit.retrieved:
                    prop.integrator = 1.0
                group.bu_input += prop.integrator  # YO!  Implicit weight of 1.0
            # finally, apply a Weber law to teh group's bu input (new 9/21/07)
            # exempt the child groups from the weber law: effectively, the weber law
            #   applies to bottom-level groups only
            # group.bu_input = group.bu_input/(1 + group.num_props) # exempt driver from Weber law?
            # TO group semantics
            for sem_link in group.semantic:
                sem_link.unit.input += sem_link.weight * group.act

    # update phase iteration
    simulation['phase_iteration'] += 1

    # figure out whether top down should be OK... i.e., did every sp fire at least once
    simulation['top_down_ok'] = True  # turn to false when falsified  HERE
    simulation['retrieval_ok'] = True # turn to false when falsified, i.e., upon first SP fired less than twice
    for sp in simulation['phase_set']['sps']:
##        if sp.times_fired == 0:
##            simulation['top_down_ok'] = False# YO YO YO HERE 10/14/13
        if sp.times_fired < 2:
            simulation['retrieval_ok'] = False
               
def god_like_update_driver_inputs(simulation):
    # update inputs in the driver assuming no WM capacity limit
    # Toggle through the SPs in the phase set in order, firing each one for
    #   iterations_per_sp iterations, then move on to the next
        
    if simulation['phase_iteration'] >= dataTypes.phase_duration - 1:
        # if this is the END of the current SP's reign, then
        #   time to move onto the next SP...

        # (0) Note that the current SP[0] has fired
        simulation['phase_set']['sps'][0].times_fired += 1
        
        # 1) de-activate the current SP (activate its inhibitor) and move to the next
        #    do this by moving the current SP to the end of the list
        #    activating the (new) first SP and de-activating all others

        # (1.1) de-activate and init inputs of All SPs
        for sp in simulation['phase_set']['sps']:
            sp.act = 0.0
            sp.td_input = 0.0
            sp.bu_input = 0.0
            sp.lat_input = 0.0
            
        # (1.2) activate inhibitor of sp[0] (the one that Was active until now)
        # simulation['phase_set']['sps'][0].inhibitor = -10 # necessary? no.

        # (1.3) inhibit its pred & argument
        simulation['phase_set']['sps'][0].pred.td_input = -10.0
        if not(simulation['phase_set']['sps'][0].obj == None):
            simulation['phase_set']['sps'][0].obj.td_input = -10.0
        if not(simulation['phase_set']['sps'][0].child_prop == None):
            simulation['phase_set']['sps'][0].child_prop.td_input = -10.0

        # (1.4) pop it to the end of the list
        simulation['phase_set']['sps'].append(simulation['phase_set']['sps'].pop(0))
        # The logic of the above: sp.pop(0) pops the first sp off the list & returns it.
        # Being so returned, it gets appended to the end of the list sp.

        # (1.4) give excitatory input to the new head of the list
        simulation['phase_set']['sps'][0].td_input = 1.0

        # activate the global inhibitor
        simulation['global_inhibition'] = -100.0  # -10.0

        # finally, set phase iteration to zero again
        simulation['phase_iteration'] = 0

    else:  # not the last iteration of the phase
        # give (only) the currently-active SP a non-zero input
        # said SP will be the oth one in the list
        simulation['phase_set']['sps'][0].td_input = 1

        # (2) spread activation around...  (NOTE: implicit connection wts of 1.0!)
        # (2.1) from sp to parent prop
        simulation['phase_set']['sps'][0].parent_prop.bu_input += simulation['phase_set']['sps'][0].act
        # set its mode (5/30/07: This was not gettng done and was why ssl was misbehaving)
        simulation['phase_set']['sps'][0].parent_prop.mode = 1
        # (2.2) to pred
        simulation['phase_set']['sps'][0].pred.td_input += simulation['phase_set']['sps'][0].act
        # (2.3) to pred semantics
        for sem_link in simulation['phase_set']['sps'][0].pred.semantic:
            sem_link.unit.input += sem_link.weight * simulation['phase_set']['sps'][0].act
        
        # (2.4a) to argument (object)
        if not(simulation['phase_set']['sps'][0].obj == None):
            simulation['phase_set']['sps'][0].obj.td_input += simulation['phase_set']['sps'][0].act
            # (2.5) to obj semantics
            for sem_link in simulation['phase_set']['sps'][0].obj.semantic:
                sem_link.unit.input += sem_link.weight * simulation['phase_set']['sps'][0].obj.act
            
        if not(simulation['phase_set']['sps'][0].child_prop == None):
            simulation['phase_set']['sps'][0].child_prop.td_input += simulation['phase_set']['sps'][0].act
            simulation['phase_set']['sps'][0].child_prop.mode = -1 # set its mode

        # (2.4b) to argument (prop)
        # figure out whether to activate the global inhibitor:
        #   set it to -10 and set to zero if Any SP has act >= 0.7
        simulation['global_inhibition'] = -10.0
        for sp in simulation['phase_set']['sps']:
            if sp.act >= 0.7:
                simulation['global_inhibition'] = 0.0

        # (2.6) to groups
        for group in simulation['phase_set']['groups']:
            # from other groups
            for group_b in group.groups:
                # recall that groups are connected to child groups and to props by
                # GroupConnector, which has the fields .unit, which is the unit, and .integrator,
                # which integrates the units activation over a temporal window.
                # Thus "group_b" is not actually a group, but a GroupConnector connected to a group
                # Update the integrator and collect input, not from the child group, but from the
                # integrator
                if group_b.unit.retrieved:
                    group_b.integrator = 1.0
                group.bu_input += group_b.integrator  # YO!  Implicit weight of 1.0!
            # from props
            for prop in group.prop:
                # the same GroupConnector logic described above also applies to props
                if prop.unit.retrieved:
                    prop.integrator = 1.0
                group.bu_input += prop.integrator  # YO!  Implicit weight of 1.0
            # finally, apply a Weber law to teh group's bu input (new 9/21/07)
            # exempt the child groups from the weber law: effectively, the weber law
            #   applies to bottom-level groups only
            # group.bu_input = group.bu_input/(1 + group.num_props) # exempt driver from Weber law?
            # TO group semantics
            for sem_link in group.semantic:
                sem_link.unit.input += sem_link.weight * group.act

    # update phase iteration
    simulation['phase_iteration'] += 1

    # figure out whether top down should be OK... i.e., did every sp fire at least once
    simulation['top_down_ok'] = True  # turn to false when falsified
    for sp in simulation['phase_set']['sps']:
        if sp.times_fired == 0:
            simulation['top_down_ok'] = False

def get_max_and_second_max(unit_list, necessary_mode=0):
    # finds and returns the units with the max and second max
    # activations in the list
    #
    # if the units you're iterating through might be props, then you need
    #   to specify necessary_mode (i.e., the mode they need to be in)
    #   in order to include them in the check
    #
    # this version of the function DOES NOT implicitly serve as a symmetry-breaker
    # it solves the problem of the above function by using >= rather than > to update max
    max_unit =   None
    second_max = None
    for unit in unit_list:
        mode_OK = True
        if type(unit) == dataTypes.PropUnit:
            if unit.mode != necessary_mode:
                mode_OK = False
        if mode_OK:
            if max_unit == None:  # set first unit as max
                max_unit = unit
            elif unit.act >= max_unit.act:  # update max and second
                second_max = max_unit
                max_unit = unit
    return [max_unit, second_max]

# the following data structure is for keeping a record of which group units are most and
#   second most active at each level of the hierarchy
active_groups = {'max':[],
                 'second_max':[]
                 }

def get_most_active_groups(groups):
    # for version Beta 3, 6/13/07; imported into runLISA (from ssLearn) 6/22/07
    # returns the most active group unit at each level of the hierarchy (0...3 for now)
    # if no unit at a given level has activation > 0.5, then it returns None
    #
    # most_active = []
    # second_most_active =[]
    #
    # init the active_groups dictionary
    active_groups['max'] = []
    active_groups['second_max'] = []
    for target_level in range(4):
        # go through all the groups.  For each group at the target level, check to see whether
        # (a) it is the most active and (b) whether its activation exceeds threshold
        max_unit = None
        second_max_unit = None
        max_act  = 0 # 0.5  # it is this act that a unit must exceed  <--- yo! changed 2/23/11
        for unit in groups:
            if unit.act > max_act and unit.level == target_level:
                # set new second max unit
                second_max_unit = max_unit
                # set new max unit
                max_unit = unit
                max_act  = unit.act
        # if you found such a most-active unit at this level of the hierarchy, then add it to
        # the list of groups to return
        if max_unit != None:
            #most_active.append(max_unit)
            active_groups['max'].append(max_unit)
        if second_max_unit != None:
            #second_most_active.append(second_max_unit)
            active_groups['second_max'].append(second_max_unit)
    # return [most_active, second_most_active] # this was commented out prior ro 2/23/11


def normal_update_driver_inputs(simulation):
    # update inputs in the driver using LISA's normal (neurally-plausible)
    #   updating, with its intrinsic capacity limits
    # upon entering this function, unit inputs have already been initialized
    # (0) init counting variables
    #
    # 5/14/07: It was a mystery how the phase set initially breaks symmetry and
    #          gets things firing out of synch.  Here's how it works:
    #   The action is in step 7.2, below, specifically in get_max_and_second_max()
    #   The first time ths function is called, all the sps have equal activation
    #      in that case, the First sp is the first to get set as max_sp, and no other
    #      sp beats it out
    #   So, it gets passed out of the function as max, with no second max
    #   As a result, due to its status as max, IT and it alone, gets no inhibition
    #      (recall that no one gets set to second max to inhibit it)
    #   I have corercted this in get_max_and_second_max() and now
    #      break symmetry by randomizing the units sti at the beginning of the phase set
    #      (step 1.7, I believe, in run() in lisamain.py
    
    simulation['global_inhibition'] = -100 # - 10 set to zero when active sp encountered
    simulation['top_down_ok'] = True # set to false when necessary
    simulation['retrieval_ok'] = True # set to false when necessary
    # do everything from the sps in the phase set
    for sp in simulation['phase_set']['sps']:
        # (1) give every sp a bit of td input
        sp.td_input = 1
        # (2) sp and parent prop:
        # (2.1) put its parent prop in parent mode and pass it input
        if sp.act > 0.3:            # NOTE: implicit threshold of 0.3
            sp.parent_prop.mode = 1
        sp.parent_prop.bu_input += sp.act  # YO!  Implicit weight of 1.0
        # (2.2) pass activation from parent to sp
        sp.td_input += sp.parent_prop.act  # YO! implicit weight of 1.0
        # (3) from excitor to inhibitor & vice-versa
        #     recall that updating inhibitor also updates times fired & sti
        sp.update_inhibitor()
        sp.td_input += sp.inhibitor * dataTypes.inhibitor_to_excitor
        # (4) sp and pred/argument
        # (4.1) sp & child prop (if there is one)
        if sp.act > 0.3:        # NOTE: implicit threshold of 0.3
            if not sp.child_prop == None:
                sp.child_prop.mode = -1     # (4.1.1) put child prop into child mode
                sp.child_prop.td_input += sp.act # (4.1.2) excite child
                sp.child_prop.td_input += sp.inhibitor * dataTypes.inhibitor_to_yoked # (4.1.3) Inhibitor to child
        # (4.2) sp & obj (if there is one)
        if not sp.obj == None:
            sp.obj.td_input += sp.act # (4.2.1) excite obj
            sp.obj.td_input += sp.inhibitor * dataTypes.inhibitor_to_yoked  # (4.2.2) to obj
        # (4.3) sp to pred
        sp.pred.td_input += sp.act # (4.3.1) excite pred
        sp.pred.td_input += sp.inhibitor * dataTypes.inhibitor_to_yoked  # (4.3.2) inhibitor to pred
        # (5) figure out whether anyone is active enough to erase global inhib
        if sp.act > 0.7:
            simulation['global_inhibition'] = 0

        # (6) figure out whether top_down_ok should be false
        if sp.times_fired < 1 or sp.inhibitor > 0.1:  # the or inhibitor.. is new  YO!
            simulation['top_down_ok'] = False

        if sp.times_fired < 2:
            simulation['retrieval_ok'] = False # HERE 10/7/13
            
    # (7) now spread inhibition laterally among units
    
    # (7.05) groups.  First, get max and second max
    get_most_active_groups(simulation['driver'].group)
    # now inhibit level by level
    for group in simulation['driver'].group:
        # inhibition from max active
        for group2 in active_groups['max']:
            # inhibition from group 2 to group if same level and not same unit
            if group2.level == group.level and group2 != group:
                group.lat_input -= group2.act * dataTypes.driver_inhibition * 3
        # inhibition from second max active
        for group2 in active_groups['second_max']:
            # inhibition from group 2 to group if same level and not same unit
            if group2.level == group.level and group2 != group:
                group.lat_input -= group2.act * dataTypes.driver_inhibition * 3
        
    # (7.1) parent props.  First, find max and second max
    [max_unit,second_max] = get_max_and_second_max(simulation['phase_set']['props'],1)
    # now inhibit by max and second max
    for prop in simulation['phase_set']['props']:
        if prop.mode == 1:  # check for parent prop
            if prop == max_unit:
                if second_max != None:
                    prop.lat_input -= second_max.act * dataTypes.driver_inhibition   # YO! implicit weight of -1!
            else:
                if max_unit != None:
                    prop.lat_input -= max_unit.act * dataTypes.driver_inhibition # YO! implicit weight of -1!
    # (7.2) SPs
    # NOTE: Driver inhibition already implemented here via sti: see build.py & parameters.py
    [max_unit,second_max] = get_max_and_second_max(simulation['phase_set']['sps'])
    for sp in simulation['phase_set']['sps']:
        if sp == max_unit:
            if second_max != None:
                sp.lat_input -= second_max.act * sp.sti * 2 * dataTypes.driver_inhibition# implicit wt of -2!
        else:
            if max_unit != None:
                sp.lat_input -= max_unit.act * sp.sti * 2 * dataTypes.driver_inhibition # implicit wt of -2!
    # (7.3) Preds
    [max_unit,second_max] = get_max_and_second_max(simulation['phase_set']['preds'])
    for pred in simulation['phase_set']['preds']:
        if pred == max_unit:
            if second_max != None:
                pred.lat_input -= second_max.act * dataTypes.driver_inhibition# YO! implicit weight of -1!
        else:
            if max_unit != None:
                pred.lat_input -= max_unit.act * dataTypes.driver_inhibition# YO! implicit weight of -1!
    # (7.4) Objs & child props
    [max_unit,second_max] = get_max_and_second_max(simulation['phase_set']['objs&childs'],-1)
    for unit in simulation['phase_set']['objs&childs']:
        # don't pass inhibitiopn to props in parent mode
        inhibit_unit = False
        if type(unit) == dataTypes.OPUnit:
            inhibit_unit = True
        if type(unit) == dataTypes.PropUnit:
            if unit.mode == -1:
                inhibit_unit = True
        if inhibit_unit:
            if unit == max_unit:
                if second_max != None:
                    unit.lat_input -= second_max.act * dataTypes.driver_inhibition# YO! implicit weight of -1!
            else:
                if max_unit != None:
                    unit.lat_input -= max_unit.act * dataTypes.driver_inhibition # YO! implicit weight of -1!

    # (8) spread activation from preds & objs to semantics
    for pred in simulation['phase_set']['preds']:
        for sem_link in pred.semantic:
            sem_link.unit.input += sem_link.weight * pred.act
    for obj in simulation['phase_set']['objs']:
        for sem_link in obj.semantic:
            sem_link.unit.input += sem_link.weight * obj.act

    # (9) finally, input to groups & group semantics
    for group in simulation['phase_set']['groups']:
        # top-down from "hand of god"
        group.td_input += 1
        # from props
        for prop in group.prop:
            # recall that groups are connected to child groups and to props by
            # GroupConnector, which has the fields .unit, which is the unit, and .integrator,
            # which integrates the units activation over a temporal window.
            # Thus "prop" is not actually a prop, but a GroupConnector connected to a prop
            # Update the integrator and collect input, not from the prop, but from the
            # integrator
            if prop.unit.retrieved:
                prop.integrator = 1.0
            group.bu_input += prop.integrator  # YO!  Implicit weight of 1.0!
            # prop.td_input += group.act
        # from groups
        for gr2 in group.groups:
            # the same GroupConnector logic described above for props also applies to child groups
            if gr2.unit.retrieved:
                gr2.integrator = 1.0
            group.bu_input += gr2.integrator # TO! implicit weight of 1
            gr2.unit.td_input += group.act
        # TO group semantics
        for sem_link in group.semantic:
            sem_link.unit.input += sem_link.weight * group.act
    
##def vector_length(semantic):
##    # computes vector length
##    # returns 1 if length is 0 to avoid run-time error, but this is OK, cause
##    #  if the denominator of the cosine would be zero, then the numerator
##    #  would be zero also, so the cosine term of a unit's input will jus be zero
##    length = 0
##    for sem in semantic:
##        length += pow(sem.act, 2)
##    length = pow(length, 0.5)
##    if length == 0:
##        length = 1
##    return length
     

def compute_bottom_up_input(analog, simulation):
    # computes bottom-up input for all recipient and dormant analogs
    # groups
        
    for group in analog.group:
        # from groups
        for group_b in group.groups:
            # recall that groups are connected to child groups and to props by
            # GroupConnector, which has the fields .unit, which is the unit, and .integrator,
            # which integrates the units activation over a temporal window.
            # Thus "prop" is not actually a prop, but a GroupConnector connected to a prop
            # Update the integrator and collect input, not from the prop, but from the
            # integrator
##            if group_b.unit: # 12/18/13: make sure unit exists before accessing act
            try:
                if group_b.unit.act > group_b.integrator:
                    group_b.integrator = group_b.unit.act
                    # automatically retrieve parent group
                    # group.retrieved = True
                group.bu_input += group_b.integrator # * 2 # YO! IMPLICIT WEIGHT OF 1
                # if parent group retrieved, automatically retrieve any child groups (11/14/08, vers ex 1.14)
                if group.retrieved and group_b.unit:
                    group_b.unit.retrieved = True
                    hebbs.create_hebbs(group_b.unit, 'Group', simulation['phase_set'], dataTypes.hebb_unit)
            except:
                print 'Error in runLISA, compute_bottom_up_input, group_b on ',group.name,' is ',group_b
        # from props
        for prop in group.prop:
            # the same GroupConnector logic described above also applies to props
            if prop.unit.act > prop.integrator:
                prop.integrator = prop.unit.act
            group.bu_input += prop.integrator # * 1.5 # YO! IMPLICIT WEIGHT OF 1.2
        # finally, apply a Weber law to teh group's bu input (new 9/21/07)
        # exempt the parent groups from the weber law: effectively, the weber law
        #   applies to bottom-level groups only
        # group.bu_input = group.bu_input/(1 + group.num_props)     <--- commented out 2/23/11

        # for vers ex 1.09 (4/22/08):
        # multiply prop and group-based input by semantic input (plus a small positive constant)
        #  so that effect groups retrieve and map to effect groups, cause to cause, etc
        #
        # from semantics
        semantic_input = 0
        for sem_link in group.semantic:
            semantic_input += sem_link.unit.act * sem_link.weight
        group.bu_input *= semantic_input # *= 2 * (semantic_input/group.weber_sum) + 0.1

        # YO!  3/5/08: semantic-to-group input suspended to prevent willy-nilly retrieval of causes & effects!
##        # from semantics
##        for sem_link in group.semantic:
##            group.bu_input += sem_link.unit.act * sem_link.weight
##        group.bu_input = group.bu_input/group.weber_sum
        
    # props
    for prop in analog.prop:
        if prop.mode > -1:
            # changed 11/21/13 for vers Ex 2.00
            prop.get_bu_input()
            
##            # 9/30/08: for prop focus: compute both mean SP act and geometric mean of SP act
##            mean = 0.0
##            geo_mean = float(1.0)
##            n = 0
##            for sp in prop.SPs:
##                # * * * * code prior to 9/30/08 * * * * 
##                # sp to prop: New 1/9/08: input from (sustained) SP output (not act)
##                # prop.bu_input += sp.output/len(prop.SPs)  # YO! IMPLICIT WEIGHT OF 1.0
##                # new 1/9/08: Divide prop's input by # SPs
##                #
##                # * * * * 9/30/08: Introduce prop_focus
##                # Note: when SP_focus = 0 this is exactly old LISA; when it is > 0, the SP
##                #       uses the Product of its pred and arg inputs
##                n += 1
##                mean += sp.output
##                geo_mean *= sp.output
##            if n > 0:
##                mean /= n
##                geo_mean = geo_mean**float(1.0/n) # math.pow(geo_mean, (1/n))
##            else:
##                mean = 0.0
##                geo_mean = 0.0
##            prop.bu_input = (dataTypes.prop_focus * geo_mean) + ((1 - dataTypes.prop_focus) * mean)

    # SPs
    for sp in analog.sp:
        # changed vers Ex 2.00 11/21/13
        sp.get_bu_input()
        
##        # this code changed fopr vers 1.04 1/8/08
##        # from pred to sp
##        if sp.pred != None:
##            pred_input = dataTypes.pred_to_sp * sp.pred.act
##        else:
##            pred_input = 0
##        # from obj to sp
##        arg_input = 0
##        if not(sp.obj == None):
##            arg_input = dataTypes.obj_to_sp * sp.obj.act
##        # from child prop to sp
##        if not(sp.child_prop == None):    # only if the child prop exisis...
##            if sp.child_prop.mode == -1:  # and only if it is in child mode
##                arg_input = sp.child_prop.act  # YO! IMPLICIT WEIGHT OF 1.0
##        # here's the new code of vers 1.04
##        # Note: when SP_focus = 0 this is exactly old LISA; when it is > 0, the SP
##        #       uses the Product of its pred and arg inputs
##        sp.bu_input = (dataTypes.SP_focus * pred_input * arg_input) + \
##                      ((1 - dataTypes.SP_focus) * (pred_input + arg_input))
##
    # now do preds & objs
    # new vers Ex 2.00, 11/21/13
    for pred in analog.pred:
        pred.get_bu_input()
    for obj in analog.obj:
        obj.get_bu_input()
    
        
        
##    # compute semantic activation weight lengths for cosine
####    pred_sem_length = vector_length(simulation['pred_sem'])
####    obj_sem_length = vector_length(simulation['obj_sem'])
####    group_sem_length = vector_length(simulation['group_sem'])
##    
##    for pred in analog.pred:
##        for sem_link in pred.semantic:
##            pred.bu_input += sem_link.unit.act * sem_link.weight
##        pred.bu_input = dataTypes.sem_to_pred * pred.bu_input/pred.weber_sum # Weber Law
####        if (pred.weight_length * pred_sem_length) > 0:
####            pred.bu_input = dataTypes.sem_to_pred * pred.bu_input/(pred.weight_length * pred_sem_length) # cosine
####        else:
####            pred.bu_input = 0
##    for obj in analog.obj:
##        for sem_link in obj.semantic:
##            obj.bu_input += sem_link.unit.act * sem_link.weight
##        obj.bu_input = dataTypes.sem_to_obj * obj.bu_input/obj.weber_sum # Weber Law
####        if (obj.weight_length * obj_sem_length) > 0:
####            obj.bu_input = dataTypes.sem_to_obj * obj.bu_input/(obj.weight_length * obj_sem_length) # cosine
####        else:
####            obj.bu_input = 0
        
def update_via_hebbs_from_this_unit(d_unit, data_type, simulation):
    # updates all recip units of th same type from this driver unit (d_unit)
    # data_type is a string specifying the type of the d_unit
    # if the data_type is prop, then you need to check the units' modes before spreading hebb-based input
    if data_type == 'Prop':
        check_mode = True
        modes_consistent = False
        check_level = False
        levels_consistent = True
    elif data_type == 'Group':
        check_mode = False
        modes_consistent = True
        check_level = True
        levels_consistent = False
    else:
        check_mode = False
        modes_consistent = True
        check_level = False
        levels_consistent = True
    for hebb_set in d_unit.hebb_set:
        if hebb_set.target in simulation['recip']:  # only update to recip analogs
            # (0) first do hebb-based inhibition to ALL units (of the same type as the d_unit) in the target analog
            # to do this, you gotta figure out which units in the target analog to iterate through
            # this is done by setting the value of list_head based on the data_type of the d_unit
            #
            # new 2/21/08 for DORA version:
            # find the head(s) of the list(s) you must iterate through to inhibit
            # There will only be one list head (e., a list of SPs if d_unit is an SP)
            #       UNLESS you are doing Objs or Preds AND you're in DORA mode: In that case objects will inhibit both
            #       objects and preds and preds will do the same
            list_heads = []
            if data_type == 'Group':
                list_heads.append(hebb_set.target.group)  # recall that hebb_set.target points to an analog
            elif data_type == 'Prop':
                list_heads.append(hebb_set.target.prop)
            elif data_type == 'SP':
                list_heads.append(hebb_set.target.sp)
            elif data_type == 'Pred':
                list_heads.append(hebb_set.target.pred)
                if dataTypes.operating_mode == 'DORA':
                    list_heads.append(hebb_set.target.obj) # in DORA mode, let preds inhibit objs
            elif data_type == 'Obj':
                list_heads.append(hebb_set.target.obj)
                if dataTypes.operating_mode == 'DORA':
                    list_heads.append(hebb_set.target.pred) # in DORA mode, let objs inhibit preds
            # (0.5) now iterate through the list heads: There will only be one list head (e., a list of SPs if d_unit is an SP)
            #       UNLESS you are doing Objs or Preds AND you're in DORA mode: In that case objects will inhibit both
            #       objects and perdicates and predicates will do the same
            for list_head in list_heads:
                # (1) now that you have the right list head, iterate through the list spreading hebb-based inhibition
                for r_unit in list_head:
                    # if d_unit is a prop, then you need to check the d_unit's mode against the r_unit's mode;
                    # if they don't match, then all of this can be skipped
                    if check_mode:  # modes are consistent iff (a) they are the same, or the r unit in in neutral (mode = 0)
                        modes_consistent = (d_unit.mode == r_unit.mode) or (r_unit.mode == 0)
                    else:
                        modes_consistent = True
                    if check_level:
                        levels_consistent = (d_unit.level == r_unit.level)
                    else:
                        levels_consistent = True
                        
                    # NOW iff the modes and levels are consistent, then spread hebb-based inhibition
                    if modes_consistent and levels_consistent:
                        # go through the r_unit's hebb sets to find the one corresponding to the driver:
                        # use the max_hebb on this hebb set to calculate hebb-based inhibition
                        r_max_hebb = 0.0  # max hebb on r_unit's hebb set to the driver: init to zero, then search to find
                        for r_hebb_set in r_unit.hebb_set:
                            if r_hebb_set.target == simulation['driver']:
                                r_max_hebb = r_hebb_set.max_hebb
                                # break # out of inner for loop
                        r_unit.hebb_input -= (r_max_hebb + hebb_set.max_hebb) * d_unit.act * dataTypes.recip_inhibition * dataTypes.hebb_bias

            # (2) Now do hebb-based excitation by iterating only through the hebbs in this hebb set
            for hebb in hebb_set.hebbs:
                if check_mode:
                    modes_consistent = (d_unit.mode == hebb.recip.mode) or (hebb.recip.mode == 0)
                else:
                    modes_consistent = True
                if modes_consistent:
                    hebb.recip.hebb_input += hebb.h_unit.weight * d_unit.act * 3 * dataTypes.hebb_bias
                    
      
def compute_hebb_based_input(simulation):
    # computes input from driver to all recip analogs via hebbs
    # works from perspective of driver

    # so that objs & preds connected to multiple props don't spread hebb activation more than once,
    #  make lists of the objs & preds & child props in the phase set, being careful not to add them more than once
    for group in simulation['phase_set']['groups']:   #   .groups:
        update_via_hebbs_from_this_unit(group, 'Group', simulation)
    for prop in simulation['phase_set']['props']:    #.props:
        update_via_hebbs_from_this_unit(prop, 'Prop', simulation)
    for sp in simulation['phase_set']['sps']:
        update_via_hebbs_from_this_unit(sp, 'SP', simulation)
    for pred in simulation['phase_set']['preds']:  # pred_list:
        update_via_hebbs_from_this_unit(pred, 'Pred', simulation)
    for obj in simulation['phase_set']['objs']:  # obj_list:
        update_via_hebbs_from_this_unit(obj, 'Obj', simulation)
    for prop in simulation['phase_set']['child_props']:#  child_list:
        update_via_hebbs_from_this_unit(prop, 'Prop', simulation)
    
    
def update_recip_inputs(simulation):
    # update inputs to all analogs except the driver

    # bottom-up input calculated same way for all analogs
    for analog in dataTypes.analog:
        if not(analog is simulation['driver']):  # but not for the driver!
            compute_bottom_up_input(analog, simulation)

    # hebb-based input: do from perspective of driver
    if simulation['top_down_ok']:        # commented out 5/21/07; put back in vers ex 1.14 11/13/08
        compute_hebb_based_input(simulation)

        # lateral inhibition in recipient analogs only: inhibition at levels of SP and above (plus out-prop inhib)
        for analog in simulation['recip']:

            # (1) groups.  First, get max and second max
            get_most_active_groups(analog.group)
            # now inhibit level by level
            for group in analog.group:
                # New logic for vers ex 1.14 (this needs to be corrected WAY back!), 11/14/08
                # Inhibit the groups in 'max' based on groups in 'second_max'
                # Inhibit Everyone Else based on groups in 'max'
                if group in active_groups['max']:
                    # inhibit based on 'second_max'
                    for group2 in active_groups['second_max']:
                        if group.level == group2.level:
                            group.lat_input -= group2.act * dataTypes.recip_inhibition
                else:
                    # inhibit based on 'max'
                    for group2 in active_groups['max']:
                        if group.level == group2.level:
                            group.lat_input -= group2.act * dataTypes.recip_inhibition
                        
            # (2) calculate max and second max prop and sp for inhibition
            # these variables are Not the Values of max and 2nd max, they are pointers to the units themselves
            # (2.1) Max and 2nd max prop
            [max_prop, second_max_prop] = get_max_and_second_max(analog.prop,1)
            # (2.2) Max and 2nd max SP
            [max_sp, second_max_sp] = get_max_and_second_max(analog.sp)

            # (2) use the max and second max prop and sp (NOT ACT!) to spread inhibition around
            # (2.1) lateral inhibition between sps and props
            # (2.1.1) props
            for prop in analog.prop:
                if prop.mode == 1: # only do parent props
                    if prop is max_prop:
                        # then take inhibition from second max prop (if it exists)
                        if second_max_prop != None:
                            prop.lat_input = dataTypes.prop_to_prop_inhib * second_max_prop.act * dataTypes.recip_inhibition
                    else:
                        # take inhibition from max prop (if it exists)
                        if max_prop != None:
                            prop.lat_input = dataTypes.prop_to_prop_inhib * max_prop.act * dataTypes.recip_inhibition

            # (2.1.2) sps
            for sp in analog.sp:
                if sp is max_sp:
                    # then take inhibitoin from second max sp (if it exists)
                    if second_max_sp != None:
                        sp.lat_input = dataTypes.sp_to_sp_inhib * second_max_sp.act * dataTypes.recip_inhibition
                else:
                    # take inhibition from max prop (if it exists)
                    if max_sp != None:
                        sp.lat_input = dataTypes.sp_to_sp_inhib * max_sp.act * dataTypes.recip_inhibition

            # (2.1.3) OPs iff dataTypes.op_to_op_inhib != 0.0
            if dataTypes.op_to_op_inhib != 0.0:
                # (2.1.3.1) Get max and second max pred & obj (hmmm. what about child props?)
                [max_pred, second_max_pred] = get_max_and_second_max(analog.pred)
                [max_obj, second_max_obj] = get_max_and_second_max(analog.obj)
                for pred in analog.pred:
                    if pred is max_pred:
                        # take inhibition from second max pred
                        if second_max_pred != None:
                            pred.lat_input = dataTypes.op_to_op_inhib * second_max_pred.act * dataTypes.recip_inhibition
                    else:
                        # take inhibition from max pred
                        if max_pred != None:
                            pred.lat_input = dataTypes.op_to_op_inhib * max_pred.act * dataTypes.recip_inhibition
                for obj in analog.obj:
                    if obj is max_obj:
                        # take inhibition from second max obj
                        if second_max_obj != None:
                            obj.lat_input = dataTypes.op_to_op_inhib * second_max_obj.act * dataTypes.recip_inhibition
                    else:
                        # take inhibition from max obj
                        if max_obj != None:
                            obj.lat_input = dataTypes.op_to_op_inhib * max_obj.act * dataTypes.recip_inhibition

            # (2.2) out-of-prop inhibition
            # (2.2.1) prop-to-sp
            for sp in analog.sp:
               if sp.parent_prop is max_prop:  # take inhibition from second max prop
                   if not(second_max_prop == None):
                       sp.td_input += dataTypes.out_prop_prop_to_sp * second_max_prop.act * dataTypes.recip_inhibition
               else:                           # take inhibition from max prop
                   if not(max_prop == None):
                       sp.td_input += dataTypes.out_prop_prop_to_sp * max_prop.act * dataTypes.recip_inhibition
            # (2.2.2) sp-pred
            for pred in analog.pred:
               if not(max_sp in pred.sps) and max_sp != None: # from max sp
                   if max_sp.pred != None:  # sp must have a pred to inhibit preds
                       pred.td_input += dataTypes.out_prop_sp_to_pred * max_sp.act * dataTypes.recip_inhibition
               if not(second_max_sp in pred.sps) and second_max_sp != None:  # from second max SP
                   if second_max_sp.pred != None: # sp must have a pred to inhibit preds
                       pred.td_input += dataTypes.out_prop_sp_to_pred * second_max_sp.act * dataTypes.recip_inhibition            
            # (2.2.3) sp-obj
            for obj in analog.obj:
               if not(max_sp in obj.sps) and not(max_sp == None):  # from max SP
                   if max_sp.obj != None or max_sp.child_prop != None: # sp must have arg to inhibit objs
                       obj.td_input += dataTypes.out_prop_sp_to_obj * max_sp.act * dataTypes.recip_inhibition
               if not(second_max_sp in obj.sps) and not(second_max_sp == None):  # from second max SP
                   if second_max_sp.obj != None or max_sp.child_prop != None: # sp must have arg to inhibit objs
                       obj.td_input += dataTypes.out_prop_sp_to_obj * second_max_sp.act * dataTypes.recip_inhibition
            # (2.2.4) sp-child props
            for prop in analog.prop:
               if prop.mode == -1:
                   if not(max_sp in prop.parent_sps) and not(max_sp == None):  # from max SP
                       if max_sp.obj != None or max_sp.child_prop != None: # sp must have arg to inhibit
                           prop.td_input += dataTypes.out_prop_sp_to_obj * max_sp.act * dataTypes.recip_inhibition
                   if not(second_max_sp in prop.parent_sps) and not(second_max_sp == None):  # from second max SP
                       if second_max_sp.obj != None or second_max_sp.child_prop != None: # must have arg to inhibit
                           prop.td_input += dataTypes.out_prop_sp_to_obj * second_max_sp.act * dataTypes.recip_inhibition
            # (2.3) top-down excitation
            # (2.3.1) preds to semantics
            for pred in analog.pred:
               for sem_list in pred.semantic:
                   sem_list.unit.input += pred.act * sem_list.weight
            # (2.3.2) objs to semantics
            for obj in analog.obj:
               for sem_list in obj.semantic:
                   sem_list.unit.input += obj.act * sem_list.weight
            # (2.3.2.5)  from groups to props (added 2/12/08)
            for group in analog.group:
               for prop in group.prop:
                   prop.unit.td_input += group.act
            # (2.3.3) props to sps
            for prop in analog.prop:
               for sp in prop.SPs:
                   sp.td_input += prop.act  # implicit weight of 1.0
            # (2.3.4) sps to...
            for sp in analog.sp:
               # (2.3.4.1) preds
               if sp.pred != None:
                   sp.pred.td_input += sp.act # implicit weight of 1.0
               # (2.3.4.2) sps to objs
               if sp.obj != None:
                   sp.obj.td_input += sp.act
               # (2.3.4.3) sps to childs
               if sp.child_prop != None:
                   sp.child_prop.td_input += sp.act

##########
def update_dormant_inputs(simulation):  # new for vers Ex 1.17   10/24/13
    # bottom-up input already done in update_recip_inputs() calculated same way for all analogs

##    if simulation['top_down_ok']:        # commented out 10/24/13

    # lateral inhibition in recipient analogs only: inhibition at levels of SP and above
    for analog in simulation['dormant']:

        # (1) groups.  First, get max and second max
        get_most_active_groups(analog.group)
        # now inhibit level by level
        for group in analog.group:
            # New logic for vers ex 1.14 (this needs to be corrected WAY back!), 11/14/08
            # Inhibit the groups in 'max' based on groups in 'second_max'
            # Inhibit Everyone Else based on groups in 'max'
            if group in active_groups['max']:
                # inhibit based on 'second_max'
                for group2 in active_groups['second_max']:
                    if group.level == group2.level:
                        group.lat_input -= group2.act * dataTypes.dormant_inhibition
            else:
                # inhibit based on 'max'
                for group2 in active_groups['max']:
                    if group.level == group2.level:
                        group.lat_input -= group2.act * dataTypes.dormant_inhibition
                    
        # (2) calculate max and second max prop and sp for inhibition
        # these variables are Not the Values of max and 2nd max, they are pointers to the units themselves
        # (2.1) Max and 2nd max prop
        [max_prop, second_max_prop] = get_max_and_second_max(analog.prop,1)
        # (2.2) Max and 2nd max SP
        [max_sp, second_max_sp] = get_max_and_second_max(analog.sp)

        # (2) use the max and second max prop and sp (NOT ACT!) to spread inhibition around
        # (2.1) lateral inhibition between sps and props
        # (2.1.1) props
        for prop in analog.prop:
            if prop.mode == 1: # only do parent props
                if prop is max_prop:
                    # then take inhibition from second max prop (if it exists)
                    if second_max_prop != None:
                        prop.lat_input = dataTypes.prop_to_prop_inhib * second_max_prop.act * dataTypes.dormant_inhibition
                else:
                    # take inhibition from max prop (if it exists)
                    if max_prop != None:
                        prop.lat_input = dataTypes.prop_to_prop_inhib * max_prop.act * dataTypes.dormant_inhibition

        # (2.1.2) sps
        for sp in analog.sp:
            if sp is max_sp:
                # then take inhibitoin from second max sp (if it exists)
                if second_max_sp != None:
                    sp.lat_input = dataTypes.sp_to_sp_inhib * second_max_sp.act * dataTypes.dormant_inhibition
            else:
                # take inhibition from max prop (if it exists)
                if max_sp != None:
                    sp.lat_input = dataTypes.sp_to_sp_inhib * max_sp.act * dataTypes.dormant_inhibition

        # (2.1.3) OPs iff dataTypes.op_to_op_inhib != 0.0
        # if dataTypes.op_to_op_inhib != 0.0:
        # (2.1.3.1) Get max and second max pred & obj (hmmm. what about child props?)
        [max_pred, second_max_pred] = get_max_and_second_max(analog.pred)
        [max_obj, second_max_obj] = get_max_and_second_max(analog.obj)

##        # DIAG
##        if max_obj:
##            print 'max obj =',max_obj.name,' in ',analog.name
##        else:
##            print 'max obj =',max_obj,' in ',analog.name
##        print 'dataTypes.op_to_op_inhib = %.3f'%dataTypes.op_to_op_inhib
##        print 'dataTypes.dormant_inhibition = %.3f'%dataTypes.dormant_inhibition

        for pred in analog.pred:
            if pred is max_pred:
                # take inhibition from second max pred
                if second_max_pred != None:
                    pred.lat_input = dataTypes.op_to_op_inhib * second_max_pred.act * dataTypes.dormant_inhibition
            else:
                # take inhibition from max pred
                if max_pred != None:
                    pred.lat_input = dataTypes.op_to_op_inhib * max_pred.act * dataTypes.dormant_inhibition
        for obj in analog.obj:
            if obj is max_obj:
                # take inhibition from second max obj
                if second_max_obj != None:
                    obj.lat_input = dataTypes.op_to_op_inhib * second_max_obj.act * dataTypes.dormant_inhibition
            else:
                # take inhibition from max obj
                if max_obj != None:
                    obj.lat_input = dataTypes.op_to_op_inhib * max_obj.act * dataTypes.dormant_inhibition

##########

# the version below replaced 4/5/14: New version (below) does more intelligent Luce choice axiom retrieval
### new for Ex 1.13, 10/21/08   HERE 10/7/13, 4/5/14
##def retrieve_from_LTM(simulation, groups_only=True):
##
##    # each iteration, retrieves props and/or groups stochastically
##    # from LTM based on their activations
##    retrieved_prop_list = []
##    retrieved_group_list = []
##    retrieved_something = False
##    
##    # go through all props & all groups in all dormant analogs
##    for analog in simulation['dormant']:
##        # groups
##        for group in analog.group:
##            prob_of_retrieval = float(group.act) # float(group.act ** 2) # prob. of retrieval
##            if prob_of_retrieval > random.random():
##                # retrieved!
##                # if you've retrieved a group and it's an effect or cause group (not a CE group), then retrieve
##                #     not the group that won, but it's parent CE group
##                done = False # when true, will break out of all loops
##                # if you've got a lower-level group...
##                if group.type in ['CAUSE','EFFECT','ENABLER','ENABLED']:
##                    # ... then try to find its parent and retrieve that instead
##                    for group2 in analog.group:
##                        # check to see whjether group is A parent group...
##                        if group2.type in ['CAUSAL','ENABLING']:
##                            #... check to see whether it's the parent of retrieved_group
##                            for group_conn in group2.group:
##                                if group_conn.unit == group:
##                                    # group2 is the parent!  retrieve it and announce that you're done
##                                    retrieved_group = group2
##                                    done = True
##                                if done: break
##                        if done:break
##                else: # if not a ['CAUSE','EFFECT','ENABLER','ENABLED']...
##                    # ... then simply retrieve the group you retrieved
##                    retrieved_group = group
##                retrieved_group_list.append(retrieved_group)
##                retrieved_something = True
##                # DIAG
##                LISA_gui.status_window.add_message('')
##                LISA_gui.status_window.add_message(''.join(['retrieved group ',group.name,' on iteration ',str(simulation['total_iteration'])]))
##        if not groups_only:
##            for prop in analog.prop:
##                prob_of_retrieval = float(prop.act ** 2) # prob. of retrieval
##                if prob_of_retrieval > random.random():
##                    # retrieved!
##                    retrieved_prop_list.append(prop)
##                    retrieved_something = True
##                    # DIAG
##                    LISA_gui.status_window.add_message('')
##                    LISA_gui.status_window.add_message(''.join(['retrieved group ',prop.pretty_name,' on iteration ',str(simulation['total_iteration'])]))
##
##    if retrieved_something:
##        simulation['phase_set_settled'] = True  # can stop running phase set if you got something
##
##    return [retrieved_prop_list, retrieved_group_list]


# new for Ex 2.01, 4/5/14: retrieves groups only at end of phase set
# this will potentially retrieve multiple groups from LTM... what are the implications of this?
def retrieve_groups(simulation):

    # each iteration, retrieves props and/or groups stochastically
    # from LTM based on their activations
    retrieved_group_list = []
    
    # go through all props & all groups in all dormant analogs
    for analog in simulation['dormant']:
        # groups
        for group in analog.group:
            prob_of_retrieval = float(group.act * 2.0)
##            #DIAG
##            print ''.join(['Group ',group.name,'; Act = %.3f'%group.act])
##            # end DIAG
            if prob_of_retrieval > random.random():
                # retrieved!
                # if you've retrieved a group and it's an effect or cause group (not a CE group), then retrieve
                #     not the group that won, but it's parent CE group
                done = False # when true, will break out of all loops
                # if you've got a lower-level group...
                if group.type in ('CAUSE','EFFECT'):
                    # ... then try to find its parent and retrieve that instead
                    retrieved_group = group.parent.unit
                else: # if not a ['CAUSE','EFFECT','ENABLER','ENABLED']...
                    # ... then simply retrieve the group you retrieved
                    retrieved_group = group
                retrieved_group_list.append(retrieved_group)
                retrieved_something = True
                # DIAG
                LISA_gui.status_window.add_message('')
                LISA_gui.status_window.add_message(''.join(['retrieved group ',group.name]))

##    # DIAG
##    print 'Attempted to retrieve groups. Got:'
##    for group in retrieved_group_list:
##        print group.name
##    # end DIAG

    return retrieved_group_list


def update_analog_activations(analog, status, simulation):
    # updates the activations of the units in one analog
    # status is a string variable -- 'driver', 'recip' or 'dormant'
    #   that tells the status of the analog, which matters for the gamma and delta parameters
    if status == 'driver':
        gamma = 0.7
        delta = 0.2
    elif status == 'recip':
        gamma = 0.7
        delta = 0.6 # 0.4 # 0.2  - changed to 0.6 3/27/08
    elif status == 'dormant':
        gamma = 0.7 # 0.5
        delta = 0.4 # 0.1 # 0.6 #       0.3  - changed to 0.6 3/27/08
    else:
        LISA_gui.status_window.add_message('ERROR in update_analog_activations() (in runLISA): Illegal status, '+status)
    # now update the activations with gamma and delta
    # check for settling: set settled to True, and falsify when found false
    all_settled = True
    for group in analog.group:
        i_settled = group.update_activation(gamma, delta)
        if not(i_settled):
            all_settled = False
        # retrieve groups into WM
        if status == 'recip':
            for group in analog.group:
                if not group.retrieved: # dont do through this for retrieved propos
                    if group.act > dataTypes.retrieval_threshold:
                        # retrieve group
                        group.retrieved = True
                        # create it's hebbs
                        hebbs.create_hebbs(group, 'Group', simulation['phase_set'], dataTypes.hebb_unit)

        elif status == 'dormant':
            group.integrator += group.act  # for retrieval 3/26/08

    for prop in analog.prop:
        i_settled = prop.update_activation(gamma, delta)
        if not(i_settled):
            all_settled = False
        # update the integrator (iff detect_anomalies and iff this prop is not in the driver)
        if simulation['sequence'].detect_anomalies and analog in simulation['recip'] and not prop.verified:
            truth_verified = prop.update_integrator()
            if truth_verified:
                # first get the name(s) of the driver prop(s)
                driver_prop_name = ''
                for dr_prop in simulation['phase_set']['props']:
                    driver_prop_name = driver_prop_name + dr_prop.pretty_name
                LISA_gui.status_window.add_message('')
                LISA_gui.status_window.add_message('Truth verified! (I.e., Lack-of-anomaly detected)')
                LISA_gui.status_window.add_message('The assertion '+driver_prop_name+' matches prop '+prop.name+': '+prop.pretty_name)
                LISA_gui.status_window.add_message('Iteration '+str(simulation['total_iteration']))
                LISA_gui.status_window.add_message('')
                if dataTypes.halt_on_anomaly:
                    simulation['simulation_complete'] = True
                    
                # * * * * Report the result to the output file * * * * *
                dataTypes.out_file.write('\n')
                dataTypes.out_file.write('Truth verified! (I.e., Lack-of-anomaly detected)\n')
                dataTypes.out_file.write('The assertion '+driver_prop_name+' matches prop '+prop.name+': '+prop.pretty_name+'\n')
                dataTypes.out_file.write('Iteration (RT) = '+str(simulation['total_iteration'])+'\n')
                dataTypes.out_file.write('\n')
                # * * * * * * * * * * * * * * * * * * * * * * * * * * *

    # retrieve units into WM
    if status == 'recip':
        for prop in analog.prop:
            if not prop.retrieved: # dont do through this for retrieved propos
                if prop.act > dataTypes.retrieval_threshold:
                    # retrieve prop and constituents
                    prop.retrieved = True
                    # create it's hebbs
                    hebbs.create_hebbs(prop, 'Prop', simulation['phase_set'], dataTypes.hebb_unit)
                    if prop.mode == 1:  # if the prop is a parent, then retrieve its constituents
                        for sp in prop.SPs:
                            sp.retrieved = True
                            # create it's hebbs
                            hebbs.create_hebbs(sp, 'SP', simulation['phase_set'], dataTypes.hebb_unit)
                            sp.pred.retrieved = True
                            # create it's hebbs
                            hebbs.create_hebbs(sp.pred, 'Pred', simulation['phase_set'], dataTypes.hebb_unit)
                            if not(sp.obj == None):
                                sp.obj.retrieved = True
                                # create it's hebbs
                                hebbs.create_hebbs(sp.obj, 'Obj', simulation['phase_set'], dataTypes.hebb_unit)
                            if not(sp.child_prop == None):
                                sp.child_prop.retrieved = True
                                # create it's hebbs
                                hebbs.create_hebbs(sp.child_prop, 'Child', simulation['phase_set'], dataTypes.hebb_unit)

    for sp in analog.sp:
        i_settled = sp.update_activation(gamma, delta)
        # new for vers Ex1.04: Update SP output by non-leaky integrator
        # (the reason for this is so that SPs can't get active for just an instant
        #  and thereafter maintain a high output: They must accumute evidence.)
        sp.update_output()
        if not(i_settled):
            all_settled = False            
    for pred in analog.pred:
        i_settled = pred.update_activation(gamma, delta)
        if not(i_settled):
            all_settled = False
    for obj in analog.obj:
        i_settled = obj.update_activation(gamma, delta)
        if not(i_settled):
            all_settled = False

    return all_settled

def semantic_interactions(simulation):
    # do the semantic interactions for vers Ex 1.03
    for semantic in dataTypes.op_semantic:
        # the code commented out below obviated in vers Ex 1.14: Now excitation done via auto-connecting OP units
##        # get weak excitation from members
##        for member in semantic.members:
##            if member.act > 0:
##                semantic.input += member.act * 0.9 # 0.5  # YO Implicit weight!
        # get weaker inhibition from categories
        for category in semantic.categories:
            # semantic.input -= abs(category.act) * 0.2 # 0.1
            if category.unit.act > 0:
                semantic.input -= category.unit.act * 0.2
        # # # Contradiction detection # # #
        if simulation['sequence'].detect_anomalies and not semantic.anomaly_detected:
            active_list = [] # for contradiction detection
            num_active = 0.0   # for contradiction detection
            geo_mean = 1.0    # geometric mean of member activations
            for member in semantic.members:
                # increment semantic.contra_integrtor w/ product of member act
                if member.act > 0.01: # YO! Implicit threshold!
                    num_active += 1.0
                    active_list.append(member)
                    geo_mean = geo_mean * member.act
            # finish calculating geomentic mean determine whether to increment
            # semantic unit's integrator (w/ the geo mean)
            if num_active > 1:
                # DIAG
                # print 'act product = %.4f' % geo_mean
                # print 'num active = ',num_active
                geo_mean = pow(geo_mean, float(1.0/num_active))
                # increment the integrator
                semantic.contra_integrator += geo_mean # * 0.5 # YO hidden parameter
                # DIAG
                # print 'geo_mean = %.4f' % geo_mean
                # print semantic.name,' contra = %.4f'  % semantic.contra_integrator
                # end DIAG
            
            # check whether semantic's contradiction integrator has crossed threshold
            if semantic.contra_integrator > 1.0:  # 1.0 YO! Hidden threshold of 1.0
                LISA_gui.status_window.add_message('Anomaly detected under '+semantic.name+'.  Active members are:')
                names = ''
                for sem in active_list:
                    names = names + sem.name+' '
                LISA_gui.status_window.add_message(names)
                LISA_gui.status_window.add_message('Simulation iteration (i.e., total RT) = '+str(simulation['total_iteration']))
                LISA_gui.status_window.add_message('')

                # tag the semantic as having already detected its anomaly
                semantic.anomaly_detected = True
                
                # declare simulation complete if necessary
                if dataTypes.halt_on_anomaly:
                    simulation['simulation_complete'] = True
                    
                # * * * * Report the result to the output file * * * * *
                dataTypes.out_file.write('\n')
                dataTypes.out_file.write('Contradiction detected under'+semantic.name+'.  Active members are: ')
                for sem in active_list:
                    dataTypes.out_file.write(sem.name)
                    if not(active_list.index(sem) == (len(active_list)-1)): # i.e., if sem is not last member...
                        dataTypes.out_file.write(', ')
                dataTypes.out_file.write('\n')
                dataTypes.out_file.write('Simulation iteration (i.e., total RT) ='+str(simulation['total_iteration'])+'\n')
                dataTypes.out_file.write('\n')
                # * * * * * * * * * * * * * * * * * * * * * * * * * * *
                
            # decay the semantic's contradiction detector
            semantic.contra_integrator *= 0.95  # YO!  Implicit parameter: Decay rate
            
def update_semantic_activations(sem_list):
    # updates activations for one class of semantic units
    # first, get max input
    Max = 1;
    for sem in sem_list:
        # add semantic noise
        sem.input += random.random() * dataTypes.semantic_noise
        # update max
        Max = max(Max, abs(sem.input))
    # then set activation as a function of Max
    for sem in sem_list:
        sem.update_activation(Max)

def update_network(simulation):
    
    init_all_inputs(simulation)       # init everyone's input
    update_modes(simulation['driver'], simulation['recip']) # update modes of props in all recip analogs  HERE 10/24/13: Not in dormant analogs. Problem?

    # figure out whether we ought to be operating in LISA or DORA mode:
    # The Rule: if doing retrieval or mapping, then act like LISA
    #           but if doing inference, then act like DORA.
    # Why this rule? you ask.
    # It's because objs and preds now connected to a common set of semantics (as of
    #   2/20/08, vers Ex 1.05) and so SSL requires you to keep roles and fillers
    #   out of synch with one another.
    old_operating_mode = dataTypes.operating_mode
    dataTypes.operating_mode = 'LISA'  # LISA by default; do DORA if SSL is likely
    if simulation['sequence'].sslearn != -1:
        for analog in simulation['recip']:
            if simulation['sequence'].sslearn == 1 or analog.ready_to_learn:
                dataTypes.operating_mode = 'DORA'
    # tell user if operating mode switches
    if dataTypes.operating_mode != old_operating_mode:
        LISA_gui.status_window.add_message(''.join(['* * * Switching from ',old_operating_mode,' mode to ',dataTypes.operating_mode,' mode']))
                

    # update input in the driver, either God-like or normal or qua DORA
    if dataTypes.operating_mode == 'LISA':
        if dataTypes.god_like_wm:
            god_like_update_driver_inputs(simulation)
        else:
            normal_update_driver_inputs(simulation)
    else:
        # update qua DORA
        update_driver_as_DORA(simulation)

    # update input in all recipients (lateral and top-down)
    # Bottom-up excitation to ALL recipient and dormant analogs
    # lateral inhibition, hebb and top-down input in recip analogs only
    update_recip_inputs(simulation)

    # update input in all dormant analogs (specifically, lateral inhibition) -- new vers 1.17
    update_dormant_inputs(simulation)

    # update activations
    # check for settling: if all recip analogs settled, then whole system settled
    # set all_settled to true and falsify when falsified
    update_analog_activations(simulation['driver'], 'driver', simulation)
    
    all_settled = True
    for analog in simulation['recip']:
        i_settled = update_analog_activations(analog, 'recip', simulation)
        if not(i_settled):
            all_settled = False
    for analog in simulation['dormant']:
        i_settled = update_analog_activations(analog, 'dormant', simulation)
        if not(i_settled):
            all_settled = False

##    # if your immediate goal is retrieval, and if top_down_OK, then 
##    #   try to retrieve stuff from LTM -- if you do, then declare the phase set over
##    retrieved_prop_list = []
##    retrieved_group_list = []
##
# moved from inside phase set (here; inside update_network() in runLISA) to end of phase set 4/5/14
####    if simulation['top_down_ok'] and simulation['sequence'].goal[-1] == 'RETRIEVE': # HERE 10/7/13: Retrieval from LTM as soon as TDOK
##    if simulation['retrieval_ok'] and simulation['sequence'].goal[-1] == 'RETRIEVE': # HERE 10/7/13: Retrieval from LTM later than top_down_ok
##        [retrieved_prop_list, retrieved_group_list] = retrieve_from_LTM(simulation)

    ## DIAG
    ## if simulation['retrieval_ok']: print 'Retrieval OK'


    # Bailing upon settling
    # FYI: Bailing upon settling typically shaves only 10 - 15
    #      iterations (out of 75) per phase
    if dataTypes.bail_upon_settling:
        if all_settled:
            simulation['iterations_settled'] += 1
        else:
            simulation['iterations_settled'] = 0
        if simulation['iterations_settled'] > 5 and simulation['phase_iteration'] > 20:  # settling criterion = 10
            # diag
            # print 'bailing at phase iteration',simulation['phase_iteration']
            # settled: go to next SP. (Only works w/ unlimited WM)
            simulation['phase_iteration'] = dataTypes.phase_duration
            # reinit settling counter
            simulation['iterations_settled'] = 0

    # self-supervised learning
    # only start the proceedings if ssl is not prohibited by sequence
    if simulation['sequence'].sslearn != -1:
        if simulation['top_down_ok']:  # only do ssl when top-down OK
            # if you got this far, do ssl on an analog-by-analog basis
            for analog in simulation['recip']:
                if simulation['sequence'].sslearn == 1 or analog.ready_to_learn:
                    # first check for the need to infer infants
                    ssLearn.check_whether_analog_needs_infants(simulation, analog)
                    # then update any infants the analog has
                    ssLearn.update_inferred_groups(analog) # groups in recip don't grow up 5/17/07
                    if analog.infant_sp != None:
                        ssLearn.update_infant_sp(analog)
                    if analog.infant_pred != None:
                        ssLearn.update_infant_op(analog, 'Pred') 
                    if analog.infant_obj != None:
                        ssLearn.update_infant_op(analog, 'Obj')
                    # now, if global inhibition is raging, then grow up nfant OPs,
                    # whether they're ready or not
                    if simulation['global_inhibition'] < 0:
                        if analog.infant_pred:
                            # purge connections < 0.1
                            index = 0
                            while index < len(analog.infant_pred.semantic):
                                if abs(analog.infant_pred.semantic[index].weight) < 0.1: # purge!
                                    analog.infant_pred.semantic.pop(index)  # I sure hope this works!  May cause problems.
                                else:
                                    index += 1                            
                            if dataTypes.diagnostics:
                                LISA_gui.status_window.add_message(''.join([analog.infant_pred.name,' is being forced to grow up early in ',analog.name]))
                                for sem_link in analog.infant_pred.semantic:
                                    LISA_gui.status_window.add_message(''.join(['    ',sem_link.unit.name,' = %.4f' % sem_link.weight]))
                            analog.infant_pred = None
                        if analog.infant_obj:
                            # purge connections < 0.1
                            index = 0
                            while index < len(analog.infant_obj.semantic):
                                if abs(analog.infant_obj.semantic[index].weight) < 0.1: # purge!
                                    analog.infant_obj.semantic.pop(index)  # I sure hope this works!  May cause problems.
                                else:
                                    index += 1                            
                            if dataTypes.diagnostics:
                                LISA_gui.status_window.add_message(''.join([analog.infant_obj.name,' is being forced to grow up early in ',analog.name]))
                                for sem_link in analog.infant_obj.semantic:
                                    LISA_gui.status_window.add_message(''.join(['    ',sem_link.unit.name,' = %.4f' % sem_link.weight]))
                            analog.infant_obj = None

    semantic_interactions(simulation)  # 10/30/07
    
    update_semantic_activations(dataTypes.op_semantic)
    update_semantic_activations(dataTypes.group_semantic)

    # now update the hebb buffers.  CAUTION: it only updates pairs of unts tagged as retrieved,
    #  so Make Sure units in the phase set are tagged as retrieved
    if simulation['top_down_ok']:
        hebbs.update_hebb_buffers(dataTypes.hebb_unit)

    # return whether the system as a whole settled and, if your in retrievel mode, anything you retrieved
    # return [all_settled, retrieved_prop_list, retrieved_group_list] # simplified 4/5/14 (see below)
    return all_settled


# * * * * * * * * * * * * * * * * * * * * * *
# * * * Random Prop Selection Routines * * * *
# * * * * * * * * * * * * * * * * * * * * * *

def random_prop_select(analog, candidate_props=None):
    # randomly select a prop from analog; if a list of candidate_props is specified, then constrain the prop
    # to be selected from those candidates only.  Return the prop you've selected

    # (1) Figure out which list of props you'll be choosing from
    if candidate_props == None:
        prop_list = analog.prop # search through all props in analog
    else:
        prop_list = candidate_props # search only through props in candidate_props

    # (2) compute the sum of prop priorities over that set of props
    #     NOTE: It is also in this loop that Attention is implemented
    priority_sum = 0.0
    for prop in prop_list:
        # first, modulate each prop's priority by attention parameter
        # The below serves to blur the distinction between high- and low-priority
        #   props as attention declines from 1.0 toward 0.0:
        #   when attention = 1, priority is unaffected
        #   when attention = 0, all priorities are equal (i.e., priority no longer matters)
        prop.priority = prop.priority * dataTypes.attention + (1 - dataTypes.attention)
        # now increment the priority sum
        if prop.priority > 0:
            priority_sum += prop.priority

        # DIAG: Print prop priorities
        # print prop.name,'priority =',prop.priority

    # SO: the priority sum gives you the "width" of the one-dimensional dart board
    #   at which you will randomly throw a dart: you're gonna choose a random point
    #   along that line, and then iterate again through the props until the cumulative
    #   priority over all props straddles that random target point

    # (3) compute a target priority: priority sum * random number (0...1)
    target_priority = random.random() * priority_sum
    # DIAG: Print prop priorities
    # print 'target priority =',target_priority

    # (4) now go again through the props...
    winning_prop = None
    priority_sum = 0.0
    for prop in prop_list:
        if prop.priority > 0:
            if target_priority >= priority_sum and target_priority <= priority_sum + prop.priority:
                # you've found the prop whose cumulative priority straddles the target
                winning_prop = prop
                break
            else: # you have not yet found that prop: add its priority to the sum and keep looking
                priority_sum += prop.priority

    # (5) Return prop
    return winning_prop

def update_prop_priorities(analog, prop):
    # called when a prop enters the phase set:
    # (0) go through ALL props & decay their existing support & increment their readiness
    # (1) set that prop's readiness and support to 0
    # (2) spread support to all its' supported props
    # (3) re-compute all props' priority based on importance, readiness & support
    #
    # Also must get called at beginning of run on Every analog, with a NONE prop
    #    i.e., before any prop gets selected in order to prime importance-based priority
    #
    # (0)increment readiness & decay support
    for prop2 in analog.prop:
        # increment readiness
        prop2.readiness += dataTypes.d_readiness_dt
        if prop2.readiness > dataTypes.max_prop_readiness:
            prop2.readiness = dataTypes.max_prop_readiness
        # decay support
        prop2.support *= 0.5  # decay by half
    if prop:  # this check is for the first time this function called
        # (1) init prop's readiness & support
        prop.readiness = 0.0
        prop.support   = 0.0
        prop.priority  = 0.0
        # (2) spread support within prop's own analog (i.e, the driver)
        for support_link in prop.supports:
            support_link.unit.support += support_link.weight
    # (3) recompute priority
    for prop2 in analog.prop:
        prop2.priority = prop2.readiness * (prop2.importance + prop2.support)

def spread_support_to_recipients(driver_props, recipients):
    # spreads support from props in the phase set to props in any recipient analogs
    #   via the mapping connections
    # first, decay any existing support on props in recipients
    for recip in recipients:
        for prop in recip.prop:
            prop.support *= 0.5 # decay by half
    # now spread support from phase set props to recip props via hebbs
    for prop in driver_props:
        for hebb_set in prop.hebb_set:
            # make sure the analog to which the hebb set points is a recipient
            if hebb_set.target in recipients:
                # now go through the hebbs in teh hebb set & spread support proportional to weight
                for hebb in hebb_set.hebbs:
                    hebb.recip.support += hebb.h_unit.weight
                
            
    
