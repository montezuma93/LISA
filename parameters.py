# this file contains the parameter modification routines

import dataTypes

def modify_file_parameters():
    menu = ''
    while menu != 'd':  # menu option D is "done"
        print
        print
        print '* * * File Parameters * * *'
        print
        print '1) Save Group Hebbs        = ',dataTypes.save_group_hebbs
        print '2) Save Prop  Hebbs        = ',dataTypes.save_prop_hebbs
        print '3) Save SP    Hebbs        = ',dataTypes.save_sp_hebbs
        print '4) Save OP    Hebbs        = ',dataTypes.save_op_hebbs
        print '5) Min Vertical Wt to save = ',dataTypes.min_vertical_wt
        print '6) File Read Diagnostics   = ',dataTypes.diagnostics
        print
        print 'd) DONE'
        print
        menu = raw_input('index of parameter to modify>')
        if menu == 'd':
            break
        elif menu == '1':
            dataTypes.save_group_hebbs = not(dataTypes.save_group_hebbs)
        elif menu == '2':
            dataTypes.save_prop_hebbs = not(dataTypes.save_prop_hebbs)
        elif menu == '3':
            dataTypes.save_sp_hebbs = not(dataTypes.save_sp_hebbs)
        elif menu == '4':
            dataTypes.save_op_hebbs = not(dataTypes.save_op_hebbs)
        elif menu == '5':
            dataTypes.min_vertical_wt = input('New Min Vertical Wt>')
        elif menu == '6':
            dataTypes.diagnostics = not(dataTypes.diagnostics)

def show_parameter_help(file_name):
    help_file = open(file_name, 'r') # open file for reading
    for text_line in help_file:  # iterates through whole file, line by line
        print text_line, # just print the text to the python window;
        # the comma at end above serves to suspend inserting an extra carriage
        # return on printing
    help_file.close() # close note file
        

def modify_run_parameters():
    menu = ''
    while menu != 'd':  # menu option d is "done"
        print
        print
        print '* * * Run Parameters * * *'
        print
        if dataTypes.god_like_wm:
            print '1) Switch to neurally-plausible WM capacity (currently unlimited)'
        else:
            print '1) Switch to unlimited WM capacity (currently neurally-plausible)'
        print '2) Semantic Noise          = ',dataTypes.semantic_noise
        print '3) Semantic Death Rate     = ',dataTypes.semantic_death
        print '4) Attention               = ',dataTypes.attention
        if dataTypes.god_like_wm:
            print '[5) Driver Inhibition     = ',dataTypes.driver_inhibition,'] (meaningless under unlimited WM)'
        else:
            print '5) Driver Inhibition       = ',dataTypes.driver_inhibition
        print '6) Recipient Inhibition    = ',dataTypes.recip_inhibition
        print '7) Hebb Learning Rate      = ',dataTypes.hebb_learning_rate
        if dataTypes.god_like_wm:
            print '8) Bail when recip settles = ',dataTypes.bail_upon_settling
        else:
            print '[8) Bail when recip settles = ',dataTypes.bail_upon_settling,'] (only works w/ unlimited WM)'
        if dataTypes.vers142_map_alg:
            print '9) Switch to H&H 97/03 Mapping Algorithm (now set to H&G Vers142)'
        else:
            print '9) Switch to Hummel & Green (Vers142) Mapping Algorithm (now set to H&H 97/03)'
        print '10) SSL Threshold        = ',dataTypes.ssl_threshold
        print '11) Within-group support = ',dataTypes.within_group_support,'(only change Before reading .SYM file)'
        print '12) Halt on contradiction= ',dataTypes.halt_on_anomaly
        print
        print '50) Hummel & Holyoak 03 Parameter Suite'
        print '51) Default Parameter Suite'
        print
        print 'e) Explain what these parameters do'
        print
        print 'd) DONE'
        print
        menu = raw_input('index of parameter to modify>')
        if menu == 'd':
            break
        elif menu == '1':
            dataTypes.god_like_wm = not(dataTypes.god_like_wm)
            # default to bail when settled if unlimited WM 
            if dataTypes.god_like_wm:
                dataTypes.bail_upon_settling = True
        elif menu == '2':
            dataTypes.semantic_noise = input('New Semantic Noise>')
        elif menu == '3':
            dataTypes.semantic_death = input('New Semantic Death Rate>')
        elif menu == '4':
            dataTypes.attention = input('New Attention>')
        elif menu == '5' and not dataTypes.god_like_wm:
            dataTypes.driver_inhibition = input('New Driver Inhibition>')
            # use driver inhibition to re-compute max_sti:
            # the idea is that the diff between min and max sti (and thus LISA's ability
            # to maintain asnynchrony of firing) is a function of inhibition in the driver
            # SO reducing driver inhibition reduces both min_sti and the difference between
            #    max and min sti
            # I could simply multiply both min and max sti by inhibition to achieve the
            #   effect below, but I'm doing it in separate steps so that the separate
            #   contributions can be done separately in future if need be
            #
            # (1) compute the difference
            delta_sti = dataTypes.max_sti - dataTypes.min_sti
            # (2) decrease the difference
            delta_sti *= dataTypes.driver_inhibition
            # (3) decrease min
            dataTypes.min_sti *= dataTypes.driver_inhibition
            # (4) re-compute max
            dataTypes.max_sti = dataTypes.min_sti + delta_sti
        elif menu == '6':
            dataTypes.recip_inhibition = input('New Recip Inhibition>')
        elif menu == '7':
            dataTypes.hebb_learning_rate = input('New Hebb Learning Rate>')
        elif menu == '8' and dataTypes.god_like_wm:
            dataTypes.bail_upon_settling = not(dataTypes.bail_upon_settling)
        elif menu == '9':
            dataTypes.vers142_map_alg = not(dataTypes.vers142_map_alg)
        elif menu == '10':
            dataTypes.ssl_threshold = input('New SSL Threshold>')
        elif menu == '11':
            dataTypes.within_group_support = input('New Within-group Support>')
        elif menu == '12':
            dataTypes.halt_on_anomaly = not(dataTypes.halt_on_anomaly)
        elif menu == '50':
            dataTypes.god_like_wm = False
            dataTypes.semantic_noise = 0.0
            dataTypes.semantic_death = 0.0
            dataTypes.attention = 1.0
            dataTypes.driver_inhibition = 1.0
            dataTypes.recip_inhibition = 1.0
            dataTypes.hebb_learning_rate = 0.9
            dataTypes.bail_upon_settling = False
            dataTypes.vers142_map_alg = False
        elif menu == '51':
            dataTypes.god_like_wm = False
            dataTypes.semantic_noise = 0.0
            dataTypes.semantic_death = 0.0
            dataTypes.attention = 1.0
            dataTypes.driver_inhibition = 1.0
            dataTypes.recip_inhibition = 1.0
            dataTypes.hebb_learning_rate = 1.0
            dataTypes.bail_upon_settling = False
            dataTypes.vers142_map_alg = True
        elif menu == 'e':
            show_parameter_help('helpRunParam.txt')

def modify_dangerous_parameters():
    print
    print '* * * NOTE: MODIFICATION OF THESE PARAMETERS IS NOT ADVISED * * *'
    print
    print "These parameters control the model's most basic operations."
    print '  (Read: Modifying them can Really f*&k things up.)'
    print
    print 'Most of what you can accomplish by modifying these parameters'
    print '  can be accomplished more systematically by manipulating Attention,'
    print '  Inhibition, Semantic Noise and so forth.'
    print
    print 'However, modifying these parameters will do no Permanent damage'
    print '  (to the model, that is; I cannot say what it will do to you),'
    print '  so if you insist on living dangerously, or are just curious,'
    print '  then please modify away...'
    print
    menu = ''
    while not menu == 'd':
        print '1) Prop-to-prop Inhibition =',dataTypes.default_prop_to_prop_inhib 
        print '2) SP-to-SP Inhibition     =',dataTypes.default_sp_to_sp_inhib 
        print '3) Out-prop: Prop-to-SP    =',dataTypes.out_prop_prop_to_sp
        print '4) Out-prop: SP-to-pred    =',dataTypes.out_prop_sp_to_pred
        print '5) Out-prop: SP-to-obj     =',dataTypes.out_prop_sp_to_obj
        print '6) Pred-to-SP              = ',dataTypes.pred_to_sp
        print '7) Obj-to-SP               = ',dataTypes.obj_to_sp
        print '8) Semantic-to-pred        = ',dataTypes.sem_to_pred
        print '9) Semantic-to-obj         = ',dataTypes.sem_to_obj
        print '10) Retrieval Threshold    = ',dataTypes.retrieval_threshold
        print '11) Hebb Bias              = ',dataTypes.hebb_bias
        if dataTypes.god_like_wm:
            print '[12) Iterations per SP     = ',dataTypes.iterations_per_sp,'] (nowmal WM only)'
            print '13) Phase duration (GLWM)  = ',dataTypes.phase_duration
        else:
            print '12) Iterations per SP      = ',dataTypes.iterations_per_sp
            print '[13) Phase duration (GLWM) = ',dataTypes.phase_duration,'] (god-like WM only)'
        print '14) OP to OP               = ',dataTypes.op_to_op_inhib
        print
        print 'e) Explain what these parameters do'
        print
        print 'd) DONE'
        print
        menu = raw_input('index of parameter to modify>')
        if menu == 'd':
            break
        elif menu == '1':
            dataTypes.default_prop_to_prop_inhib = input('New prop-to-prop inhib>')
        elif menu == '2':
            dataTypes.default_sp_to_sp_inhib = input('New sp-to-sp inhib>')
        elif menu == '3':
            dataTypes.out_prop_prop_to_sp = input('New out-prop: prop-to-sp>')
        elif menu == '4':
            dataTypes.out_prop_sp_to_pred = input('New out-prop: sp-to-pred>')
        elif menu == '5':
            dataTypes.out_prop_sp_to_obj = input('New out-prop: sp-to-obj>')
        elif menu == '6':
            dataTypes.pred_to_sp = input('New pred-to-sp>')
        elif menu == '7':
            dataTypes.obj_to_sp = input('New obj-to-sp>')
        elif menu == '8':
            dataTypes.sem_to_pred = input('New semantic-to-pred>')
        elif menu == '9':
            dataTypes.sem_to_obj = input('New semantic-to-obj>')
        elif menu == '10':
            dataTypes.retrieval_threshold = input('New Retrieval Threshold>')
        elif menu == '11':
            dataTypes.hebb_bias = input('New Hebb Bias>')
        elif menu == '12' and not(dataTypes.god_like_wm):
            dataTypes.iterations_per_sp = input('New Iterations Per SP (for normal WM only)>')
        elif menu == '13' and dataTypes.god_like_wm:
            dataTypes.phase_duration = input('New Phase Duration (for god-like WM only)>')
        elif menu == '14':
            dataTypes.op_to_op_inhib = input('New OP to OP inhib>')
        elif menu == 'e':
            show_parameter_help('helpDangerParam.txt')


def modify_parameters():
    print
    menu = ''
    while not(menu == 'f' or menu == 'r' or menu == 'd'):
        menu = raw_input('Modify (f)ile read/write, (r)un parameters or (d)angerous parameters?  >')
    if menu == 'f':
        modify_file_parameters()
    elif menu == 'r':
        modify_run_parameters()
    elif menu == 'd':
        modify_dangerous_parameters()
    
