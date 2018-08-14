# interrogate.py
#
# 4/18/08, vers Ex 1.08 (but should be back-portable to other versions... with some modification)
#
# routines to interrupt a graphical run and get any detail about any data structure in LISA

import dataTypes, hebbs

def interrogate_mapping_connections(simulation):
    print
    print "Here's what I know about the hebbs..."
    print
##    print 'This is what the simulation dictionary thinks the hebbs are (weights > 0):'
##    for hebb in simulation['hebb_units']:
##        if hebb.weight > 0.0:
##            print hebb.owners[0].name,'<->',hebb.owners[1].name,'wt = %.3f' % hebb.weight
##    print
    print 'And this is what dataTypes.py thinks the hebbs are (weights > 0):'
    for hebb in dataTypes.hebb_unit:
        if hebb.weight > 0.0:
            print hebb.owners[0].name,'<->',hebb.owners[1].name,'wt = %.3f' % hebb.weight
    print
    print 'And here are other extant hebb connections with weights <= 0 (according to dataTypes.py)'
    for hebb in dataTypes.hebb_unit:
        if hebb.weight <= 0.0:
            print hebb.owners[0].name,'<->',hebb.owners[1].name,'wt = %.3f' % hebb.weight
    print
    print 'If you want more information about what the Units think their hebbs are, then enter "u" in the main menu below'
    print

def show_analog(analog):
    # shows all the units in an analog
    print
    print '* * * * * * * Units in Analog',analog.index,':',analog.name,'* * * * * * * *'
    print
    print '----- Groups -----'
    print
    for group in analog.group:
        print group.index,')',group.name,':'
        print '  Sub-groups: ',
        for conn in group.group:
            print conn.unit.name,
        print
        print '  Props: ',
        for conn in group.prop:
            print conn.unit.name,
        print
        print '  Semantics: ',
        for link in group.semantic:
            print link.unit.name,'(%.3f)  ' %link.weight,
        print
    print
    print '----- Props -----'
    print
    for prop in analog.prop:
        print prop.index,')',prop.name,',',prop.pretty_name,':'
        print '  Connected to:',
        for sp in prop.SPs:
            print ' SP',sp.name,': [',
            if sp.pred: print sp.pred.name,
            else: print 'NO PRED',
            if sp.obj: print sp.obj.name,']',
            elif sp.child_prop: print sp.child_prop.name,']',
            else: print 'NO ARGUMENT ]',
        print
    print
    print '----- SPs -----'
    print
    for sp in analog.sp:
        print sp.index,')',sp.name,': [',
        if sp.pred: print sp.pred.name,
        else: print 'NO PRED',
        if sp.obj: print sp.obj.name,']',
        elif sp.child_prop: print sp.child_prop.name,']',
        else: print 'NO ARGUMENT ]',
        print
    print
    print '----- Preds -----'
    print
    for pred in analog.pred:
        print pred.index,')',pred.name
        print '  Semantics:',
        for link in pred.semantic:
            print link.unit.name,'(%.3f)  ' %link.weight,
        print
    print
    print '----- Objs -----'
    print
    for obj in analog.obj:
        print obj.index,')',obj.name
        print '  Semantics:',
        for link in obj.semantic:
            print link.unit.name,'(%.3f)  ' %link.weight,
        print    
    print
    print '* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *'

def interrogate_unit(unit):
    # A generic interrogation method for all units.  Will have to make special provisions for
    #   specific types of units
    # Simply shows the values of all the units' variables
    print
    print '* * * * * * * * * * Details of',unit.name,'* * * * * * * * * *'
    print
    print "here's pointer info:",unit
    print
    if type(unit) != dataTypes.SemanticUnit: # i.e., for any token unit
        print "here's the stuff common to all Token units:"
        print 'name =',unit.name
        print 'index =',unit.index
        print 'analog =',unit.analog.name
        print 'act = %.3f' % unit.act
        print 'retrieved =', unit.retrieved
        print 'bu_input = %.3f' % unit.bu_input
        print 'td_input = %.3f' % unit.td_input
        print 'lat_input = %.3f' % unit.lat_input
        print 'hebb_input = %.3f' % unit.hebb_input
        print 'hebb_set = '
        for hebb_set in unit.hebb_set:
            print 'hebb_set:'
            print '  owner =',hebb_set.owner.name
            print '  target =',hebb_set.target.name
            print '  max_hebb = %.3f' % hebb_set.max_hebb
            print '  hebbs:'
            for hebb in hebb_set.hebbs:
                print '    recip =',hebb.recip.name,'   weight = %.3f' % hebb.h_unit.weight
        # now print idiosynchratic stuff
        #
        # group stuff
        print
        if type(unit) == dataTypes.CEGroup:
            print 'CE group-specific stuff:'
            print 'refractory = %.3f' % unit.refractory
            print 'integrator = %.3f' % unit.integrator
            print 'level =',unit.level
            print 'type =',unit.type
            print 'inductive confidence = %.3f' % unit.inductive_confidence.value
            if unit.cause_group:
                print 'cause group = ',unit.cause_group.unit.name
            else:
                print 'cause group = NONE'
            if unit.effect_group:
                print 'effect group = ',unit.effect_group.unit.name
            else:
                print 'effect group = NONE'
            print 'child groups:'
            for gr_conn in unit.groups:
                print '  ',gr_conn.unit.name,'  integrator = %.3f' % gr_conn.integrator
            print 'props:'
            for pr_conn in unit.prop:
                print '  ',pr_conn.unit.name,'  integrator = %.3f' % pr_conn.integrator
            print 'semantics:'
            for sem_link in unit.semantic:
                print '  ',sem_link.unit.name,'  weight = %.3f' % sem_link.weight
            print 'weber_sum = %.3f' % unit.weber_sum
            # prop stuff
            print
        elif type(unit) == dataTypes.GroupUnit:
            print 'group-specific stuff:'
            print 'refractory = %.3f' % unit.refractory
            print 'integrator = %.3f' % unit.integrator
            print 'level =',unit.level
            print 'type =',unit.type
            print 'truth_status =',unit.truth_status
            print 'parent groups:'
            for gr_conn in unit.parent_groups:
                print '  ',gr_conn.unit.name,'  integrator = %.3f' % gr_conn.integrator
            print 'child groups:'
            for gr_conn in unit.groups:
                print '  ',gr_conn.unit.name,'  integrator = %.3f' % gr_conn.integrator
            print 'props:'
            for pr_conn in unit.prop:
                print '  ',pr_conn.unit.name,'  integrator = %.3f' % pr_conn.integrator
            print 'semantics:'
            for sem_link in unit.semantic:
                print '  ',sem_link.unit.name,'  weight = %.3f' % sem_link.weight
            print 'weber_sum = %.3f' % unit.weber_sum
            # prop stuff
            print
        elif type(unit) == dataTypes.PropUnit:
            print 'prop-specific stuff:'
            print 'readiness = %.3f' % unit.readiness
            print 'support = %.3f' % unit.support
            print 'priority = %.3f' % unit.priority
            print 'mode =',unit.mode
            print 'integrator = %.3f' % unit.integrator
            print 'pretty_name =',unit.pretty_name
            print 'parent_sps:',
            for sp in unit.parent_sps:
                print sp.name,
            print
            print 'SPs:',
            for sp in unit.SPs:
                print sp.name,
            print
            print 'supports:',
            for link in unit.supports:
                print link.unit.name,'(',link.weight,')  ',
            print
        elif type(unit) == dataTypes.SPUnit:
            print 'sp-specific stuff:'
            print 'parent prop:',unit.parent_prop.name
            print 'pred:',unit.pred.name
            if unit.obj: print 'obj:',unit.obj.name
            if unit.child_prop: print 'child prop:',unit.child_prop.pretty_name
            print 'inhibitor = %.3f' % unit.inhibitor
            print 'times fired =',unit.times_fired
            print 'sti = %.3f' % unit.sti
            print 'output = %.3f' % unit.output
            print
        elif type(unit) == dataTypes.OPUnit:
            print 'op-specific stuff:'
            for sem_link in unit.semantic:
                print sem_link.unit.name+': %.3f' % sem_link.weight
    elif type(unit) == dataTypes.SemanticUnit:
        print 'input = %.3f' % unit.input
        print 'act   = %.3f' % unit.act
        print 'level = ',unit.level
        print 'members:'
        for member in unit.members:
            print '   ',member.name
        print 'categories:'
        for cat in unit.categories:
            print '   ',cat.name
        print 'contradection integrator   = %.3f' % unit.contra_integrator
        print 'anamoly detected           = ',unit.anomaly_detected
        print
        
        
def interrogate_units():
    # This is interrogate_unitS, which is the main menu for interrogating all kinds
    #  of units, and is to be distinguished from interrogate_unit (note lack of terminal s),
    #  which handles the interrogation of a single unit
    print
    print 'Unit Interrogation:'
    all_done = False # quit this function when true
    #
    # interrogate the user about which analog contains the unit they wish to interrogate
    # When the user enters -1 for the analog index, that means they're done
    #
    while not(all_done): # when all_done the user is done interrogaing units
        print_index  = 0 # the analog index for printing to screen
        the_analog   = None
        unit_type    = None
        unit_name    = ''
        # iterate through analogs to show the user which analogs they can interrogate
        print
        print 'Analogs:'
        for analog in dataTypes.analog:
            print print_index,')',analog.name
            print_index += 1
        print
        #
        # now ask the user which analog they wish to interrogate
        #
        input_done = False # seek a legal input: an analog index or -1
        while not(input_done):
            analog_index = input('To which analog does the unit belong? (Enter -1 to exit)>')
            if analog_index in xrange(len(dataTypes.analog)):
                the_analog = dataTypes.analog[analog_index]
                input_done = True
            elif analog_index == -1:
                input_done = True
                all_done = True
            else:
                print
                print 'Illegal index.  Try again'
                print
        # at this point you should have a legal input (either -1 or an analog index)
        # if -1, then quit. Otherwise, query the user for more info: unit type, unit name
        if not(all_done):
            # here's where you proceed, knowing that you have a legal analog but not yet knowing
            # what kind of unit the user wishes to interrogate
            show_analog(the_analog)
            unit_type = ''
            while not(unit_type in ['group', 'prop', 'sp', 'pred', 'obj','none']):
                unit_type = raw_input('What type of unit? [group, prop, sp, pred, obj or none to quit]>')
            if   unit_type == 'group': unit_list = the_analog.group
            elif unit_type == 'prop' : unit_list = the_analog.prop
            elif unit_type == 'sp'   : unit_list = the_analog.sp
            elif unit_type == 'pred' : unit_list = the_analog.pred
            elif unit_type == 'obj'  : unit_list = the_analog.obj
            else : all_done = True
        while not(all_done):
            # if user has not quit, get the index of the unit to interrogate
            index = -1000
            while (index < 0) or (index >= len(unit_list)):
                message = 'Enter the index of the '+unit_type+' to interrogate >'
                index = input(message)
            interrogate_unit(unit_list[index])
            do_another = ''
            while not(do_another in ['y','n']):
                message = 'Interrogate another '+unit_type+'?'
                do_another = raw_input(message)
                if do_another == 'n': all_done = True
    

def interrogate_analog():
    print 'Sorry: not yet written'

def interrogate_sequence(sequence):
    print
    print '* * * * * * * Details of current Sequence Element * * * * * * *'
    print 'index =',sequence.index
    print 'drver =',sequence.driver.name
    print 'recip =',
    for recip in sequence.recip:
        print recip.name,
    print
    print 'phase_set =',
    for unit in sequence.phase_set:
        print unit.name,'  ',
    print 'control =',sequence.control
    print 'update_hebbs =',sequence.update_hebbs
    print 'sslearn =',sequence.sslearn
    print 'goals =',
    for goal in sequence.goal:
        print goal,'  ',
    print
    print 'detect_anomalies =',sequence.detect_anomalies
    print '* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *'

def interrogate_simulation(simulation):
    print 'Sorry: not yet written'

def interrogate(simulation):
    # the top-level function in interrogate
    # prints the main menu and directs the user to all interrogation functions
    #
    top_level_commands = ['r','m','u','a','s','S']
    # m = mapping connections
    # u = unit
    # a = analog
    # r = return to run
    #
    all_done = False
    while not all_done: # the main loop
        menu = ''
        # print main menu
        print
        print '* * * Interrogation menu * * *'
        print
        print '(m) Interrogate mapping connections'
        print '(u) Interrogate individual units'
        print '(a) Interrogate whole analog'
        print '(s) Interrogate sequence'
        print '(S) Interrogate simulation dictionary'
        print '(r) Return to simulation run'
        print
        while not(menu in top_level_commands):
            menu = raw_input('Your wish is my command.>')
        if menu == 'm': interrogate_mapping_connections(simulation)
        elif menu == 'u': interrogate_units()
        elif menu == 'a': interrogate_analog()
        elif menu == 's': interrogate_sequence(simulation['sequence'])
        elif menu == 'S': interrogate_simulation(simulation)
        elif menu == 'r': all_done = True
        
