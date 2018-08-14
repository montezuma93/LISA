# this is the old explanation flow-of-control stuff (from LISA.py, Run()) that has been moved
# for vers 1.07 to explain.py
#
# this file is just for back-up in case I screw anything up royally
#
        # 3.5)Explanation stuff!
        # if mode = EXPLAIN or PREDICT or SOLVE then decide whether
        # to turn fire control over to the analog that was the recipient last
        # phase set... this is gonna be hard...
        if sequence_element.goal[0] in ['EXPLAIN','PREDICT','SOLVE'] and not(simulation['cause_detected']==[]):
            # cause_detected will be true (will point to a cause-effect group) iff a cause group was activated
            # Make inferences from the cause group:
            #  1) Make a new sequence element for each prop in (4) below
            #  2) Make the cause group's analog the driver
            #  3) Make the analog that was just the driver the recipient
            #  4) Put the cause group and its constituents into teh phase set (one prop at a time;
            #     fire them in order)
            # the following assumes only one cause can be detected
            # the_group = simulation['cause_detected']
            # the following code assumes multiple potential causes can be detected
            #
            
            for the_group in simulation['cause_detected']:
                # first, init all their integrators to zero (new 9/21/07)
                # NOTE that, currently, this is the ONLY place where integrators are getting
                #      initialized!!
                for prop in the_group.prop:
                    prop.integrator = 0
                for gr2 in the_group.group:
                    gr2.integrator = 0
                    for prop in gr2.unit.prop:
                        prop.integtrator = 0

                new_driver = None # clear any previous value
                new_driver = the_group.analog # assign by value, not pointer
                # make the new list of recipients: the current driver, plus all current recips Except
                # the one that will become the new driver
                new_recip = [] # clear any previous value
                new_recip = list(sequence_element.recip) # assign by value
                # now, remove from new_recip the analog that will become the new driver
                if new_driver in new_recip:
                    new_recip.remove(new_driver)
                # add the current driver to the new list of recipients
                if not(sequence_element.driver in new_recip):
                    new_recip.append(sequence_element.driver)

                # add sequence elements for the units in the detected CE group
                last_sequence_elements = []
                last_sequence_elements = explain.add_group_to_sequence(last_sequence_elements,
                                                                       new_driver, new_recip, the_group,
                                                                       sequence_element.goal,'INFER')
                    # agruments are: driver, recip, group, goal_list, immediate_goal)
                    #
                    # POTENTIAL PROBLEM!!!
                    # The function called above recursively ads a group's sub-groups, so make
                    #   sure smulation['cause_detected'] specifies only the highest-level CE group
                    #   Either that OR remove the recursion from the function call!!!

            # Now, BE SURE to init 'cause detected' to None!!
            #   the following code assumes it can detect only one cause
            #   the following code assumes it can detect multiple potential causes
            # But Before You Do... keep track of what the detected cause(s) was/were
            #  so you can later put them in the analog's inhibited list
            last_cause_detected = simulation['cause_detected']
            simulation['cause_detected'] = []

            # DIAG: Show the complete list of sequence elements
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

            # give user the opportunity to quit
            menu = raw_input('Wanna quit now? (y/n)')
            if menu == 'y':
                break

        # new 3/26/08: For elaboration
        # This is retrieval of stuff from LTM
        # if goal[-1] is retrieve and there are no recipients (i.e., all is in LTM)
        # then stochastically retrieve groups based on... the groups' integrators?

        # * * * * * * 9/25/07 * * * * * *
        # the following is a big part of the goal-based flow of control
        #   in explanation LISA
        #
        # IF   you're in explain or predict or solve mode,
        # AND  the goal is to infer
        # AND  this is the final sequence element
        # THEN you need to either:
        #      (a) quit or
        #      (b) (1) move the groups that just drove inference
        #              into the inhibited list,
        #          (2) switch back into retrieval mode and
        #          (3) turn cntrol back over to the explanandum
        #              --> specifically, embeddng the newly inferred stuff in an EFFECT group
        #                  and driving with that group

        if (sequence_element.goal[0] in ['EXPLAIN','PREDICT','SOLVE'] and 
            sequence_element.goal[-1] == 'INFER' and
            sequence_element is dataTypes.sequence[-1]):
            # 9/25/07: I don't know how to quit yet (option (a) above),
            #          so for now, let's just implement option (b) above
            # to find the groups that need to go into the inhibited list,
            #   you could go through the last_sequence_elements list to see which
            #   groups were in control.
            # alternatively, you could just use the last_cause_detected list
            #
            # in a few lines, you're gonna move the recently processed groups to the
            #   analog's inhibited list
            # but before you do that, decay the refractories of and stochastically
            #   dis-inhibit any groups that are already on the inhibited list
            # the analog in question here is the analog of whatever group(s) are on the
            #   last_cause_detected list; use the end of that list as a way to get to the analog
            if last_cause_detected != []:
                explain.disinhibit_groups(last_cause_detected[-1].analog)
            #
            # Now... move the group(s) in last_cause_detected into the inhibited list
            #       and set their refractory values to 1.0
            for group in last_cause_detected:
                explain.move_to_inhibited_list(group)
            # ... and then init the last_cause_detected list
            last_cause_detected = []
            
            # ... and turn control back over to the explanandum
            # ASSUME that the explanandum is the analog that served as
            #  the driver the Very First time and that the first recip is again the recip
            new_driver = None
            new_driver = original_driver # dataTypes.sequence[0].driver
            new_recip = []
            new_recip  = list(original_recip) # dataTypes.sequence[0].recip
            
            if dataTypes.diagnostics:
                print 'new_driver =',new_driver.name,
                print'   new_recip =',
                for anlg in new_recip:
                    print anlg.name,
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
                if target_group != None:
                    break # if target found then break out of loop
                
            # If you have a target group for further exploration, then
            #  make new sequence elements using its props
            if target_group != None:
                
                if dataTypes.diagnostics:
                    print 'found a new target to explain:',target_group.name,'in analog',target_group.analog.name

                # now, embed the contents of the target group in a new EFFECT group and drive retrieval with tht effect
                new_group = explain.make_new_effect_group(target_group)
                # update the graphics
                if simulation['use_graphics']:
                    graphics.SetUnitLocations(dataTypes.analog, dataTypes.op_semantic, dataTypes.group_semantic)
                
                
                # create new sequence elements to run the newly created effect group
                last_sequence_elements = []
                last_sequence_elements = explain.add_group_to_sequence(last_sequence_elements,new_driver, new_recip, new_group,
                                                                       sequence_element.goal,'RETRIEVE')
                    # agruments are: driver, recip, group, goal_list, immediate_goal)
                    #
                    # POTENTIAL PROBLEM!!!
                    # The function called above recursively ads a group's sub-groups, so make
                    #   sure smulation['cause_detected'] specifies only the highest-level CE group
                    #   Either that OR remove the recursion from the function call!!!
                    # Turns out this problem solved in the code that constructs the phase set: It automatically adds
                    #   parents of groups in the phase set to teh phase set

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

                # give user the opportunity to quit
                menu = raw_input('Wanna quit now? (y/n)')
                if menu == 'y':
                    break
