# outFile.py: All the output file saving routines
import dataTypes

def write_parameter_values():
    # writes the parameters of the simulation to the outpyt file
    dataTypes.out_file.write('\n')
    dataTypes.out_file.write('* * * * * * * * * * * * * * * * * * * * *\n')
    dataTypes.out_file.write('Parameters values:\n')
    if dataTypes.god_like_wm:
        dataTypes.out_file.write('    Unlimited WM\n')
    else:
        dataTypes.out_file.write('    Neurally-plausible WM\n')
    dataTypes.out_file.write('    Semantic Noise = %.4f\n' % dataTypes.semantic_noise)
    dataTypes.out_file.write('    Semantic Death = %.4f\n' % dataTypes.semantic_death)
    dataTypes.out_file.write('    Attention = %.4f\n' % dataTypes.attention)
    dataTypes.out_file.write('    Within-group support = %.4f\n' % dataTypes.within_group_support)
    dataTypes.out_file.write('    Driver Inhibition = %.4f\n' % dataTypes.driver_inhibition)
    dataTypes.out_file.write('    Recip Inhibition = %.4f\n' % dataTypes.recip_inhibition)
    dataTypes.out_file.write('    Hebb Learning Rate = %.4f\n' % dataTypes.hebb_learning_rate)
    if dataTypes.bail_upon_settling:
        dataTypes.out_file.write('    Bail Upon Settling = True\n')
    else:
        dataTypes.out_file.write('    Bail Upon Settling = False\n')
    if dataTypes.vers142_map_alg:
        dataTypes.out_file.write('    Using Vers142 Mapping Algorithm\n')
    else:
        dataTypes.out_file.write('    Using H&H 97/03 Mapping Algorithm\n')
    dataTypes.out_file.write('* * * * * * * * * * * * * * * * * * * * *\n\n')

def write_these_hebbs(the_list, to_analog):
    # writes all the hebbs to to_analog for one class of units (the_list of units) in (implicit) from_analog
    for unit in the_list:
        if unit.has_hebbs(to_analog):
            # if unit is a CE group or a prop, then write its inductive confidence along with its name; else, just write the name
            if type(unit) in (dataTypes.PropUnit, dataTypes.CEGroup):
                dataTypes.out_file.write('    From '+unit.name+' (IC = %.3f) to:'%unit.inductive_confidence.value)
            else:
                dataTypes.out_file.write('    From '+unit.name+' to:')
            for hebb_set in unit.hebb_set:
                if hebb_set.target == to_analog:
                    for hebb in hebb_set.hebbs:
                        if hebb.h_unit.weight > 0:
                            #dataTypes.out_file.write('    ['+hebb.recip.name+' = '+str(hebb.h_unit.weight)+']')
                            dataTypes.out_file.write('    '+hebb.recip.name+' = %.3f' % hebb.h_unit.weight)
                            # the above syntax (%.3f) says print a float w/ 3 points precision.
                            # the syntax % hebb.h_unit.weight tells it Which float to print
                    dataTypes.out_file.write('\n') # new line after all hebbs in hebb set written

def write_inferred_group(group, indent=''):
    if group:
        dataTypes.out_file.write(indent+group.name+' (index = '+str(group.index)+' level ='+str(group.level)+'):  \n')
        # write inductive confidence
        if is_CE_group(group):
            dataTypes.out_file.write(indent+'\tInductive confidence = %.3f\n'%group.inductive_confidence.value)
        indent = indent + '     '
        # write the semantics first
        dataTypes.out_file.write(indent+'Semantics: ')
        for sem_link in group.semantic:
            if sem_link.weight >= dataTypes.min_vertical_wt:
                dataTypes.out_file.write(sem_link.unit.name+' (%.3f) ' % sem_link.weight)                
        dataTypes.out_file.write('\n')
        # props
        if group.prop: dataTypes.out_file.write(indent+'Props: ')
        for prop in group.prop:
            dataTypes.out_file.write(prop.unit.name+') '+prop.unit.pretty_name+' ')
        dataTypes.out_file.write('\n')
        # groups: recursive function call
        if group.groups: dataTypes.out_file.write(indent+'Groups: \n')
        for g2 in group.groups:
            write_inferred_group(g2.unit, indent)
        dataTypes.out_file.write('\n')

def write_output_file(simulation):
    # save parameter data, etc.
    
    # save the hebbs by analog
    if dataTypes.save_group_hebbs or dataTypes.save_prop_hebbs or \
       dataTypes.save_sp_hebbs or dataTypes.save_op_hebbs:
        dataTypes.out_file.write('\n\n')
        dataTypes.out_file.write('* * * * * * * * * * * * * * * *\n')
        dataTypes.out_file.write('* * * Mapping Connections * * *\n')
        dataTypes.out_file.write('* * * * * * * * * * * * * * * *\n')
        for from_analog in dataTypes.analog:
            for to_analog in dataTypes.analog:
                if from_analog != to_analog:
                    if from_analog.has_hebbs(to_analog):
                        dataTypes.out_file.write('\n')
                        dataTypes.out_file.write('From '+from_analog.name+' to '+to_analog.name+':\n')
                        # group hebbs
                        if dataTypes.save_group_hebbs:
                            dataTypes.out_file.write('  Groups:\n')
                            write_these_hebbs(from_analog.group, to_analog)
                        # prop hebbs
                        if dataTypes.save_prop_hebbs:
                            dataTypes.out_file.write('  Props:\n')
                            write_these_hebbs(from_analog.prop, to_analog)
                        # sp hebbs
                        if dataTypes.save_sp_hebbs:
                            dataTypes.out_file.write('  SPs:\n')
                            write_these_hebbs(from_analog.sp, to_analog)
                        # op hebbs
                        if dataTypes.save_op_hebbs:
                            dataTypes.out_file.write('  Preds:\n')
                            write_these_hebbs(from_analog.pred, to_analog)
                            dataTypes.out_file.write('  Objs:\n')
                            write_these_hebbs(from_analog.obj, to_analog)
        dataTypes.out_file.write('\n')

    # write inferred units to file
    any_analog_has_inferred_units = False
    for analog in dataTypes.analog:
        if analog.has_inferred_units():
            any_analog_has_inferred_units = True
            break
    if any_analog_has_inferred_units:
        dataTypes.out_file.write('\n\n')
        dataTypes.out_file.write('* * * * * * * * * * * * * * * *\n')
        dataTypes.out_file.write('* * * * Inferred Units  * * * *\n')
        dataTypes.out_file.write('* * * * * * * * * * * * * * * *\n')
        for analog in dataTypes.analog:
            if analog.has_inferred_units():
                dataTypes.out_file.write('\n')
                dataTypes.out_file.write('* * * * * Analog '+analog.name+' * * * * *\n')
                # groups
                dataTypes.out_file.write('\nGroups:\n')
                for group in analog.group:
                    if group.inferred: write_inferred_group(group)
                # props
                dataTypes.out_file.write('\nProps:\n')
                for prop in analog.prop:
                    if prop.inferred:
                        dataTypes.out_file.write(prop.name+':  ')
                        for sp in prop.SPs:
                            if sp.pred == None:
                                dataTypes.out_file.write('[ NIL + ')
                            else:
                                dataTypes.out_file.write('[ '+sp.pred.name+' + ')
                            if sp.obj != None:
                                dataTypes.out_file.write(sp.obj.name+' ] ')
                            elif sp.child_prop != None:
                                dataTypes.out_file.write(sp.child_prop.name+' ] ')
                            else:
                                dataTypes.out_file.write('NIL ] ')
                        dataTypes.out_file.write('\n')     # write one prop per line
                # preds
                dataTypes.out_file.write('\nPreds:\n')
                for pred in analog.pred:
                    if pred.inferred:
                        dataTypes.out_file.write(pred.name+':\n')
                        for sem_link in pred.semantic:
                            if sem_link.weight >= dataTypes.min_vertical_wt:
                                # indent the semantic in proportion to the smallness of its weight
                                indents = round(3 + 10 * (1 - sem_link.weight))
                                for i in xrange(int(indents)):
                                    dataTypes.out_file.write(' ')
                                dataTypes.out_file.write(sem_link.unit.name+'(%.3f)\n' % sem_link.weight)
                        dataTypes.out_file.write('\n')     # space between preds
                        
                # objs
                dataTypes.out_file.write('\nObjs:\n')
                for obj in analog.obj:
                    if obj.inferred:
                        dataTypes.out_file.write(obj.name+':\n')
                        for sem_link in obj.semantic:
                            if sem_link.weight >= dataTypes.min_vertical_wt:
                                # indent the semantic in proportion to the smallness of its weight
                                indents = round(3 + 10 * (1 - sem_link.weight))
                                for i in xrange(int(indents)):
                                    dataTypes.out_file.write(' ')
                                dataTypes.out_file.write(sem_link.unit.name+'(%.3f)\n' % sem_link.weight)
                        dataTypes.out_file.write('\n')     # space between objs

def save_intermediate_results():
    # saves mapping connections from explanandum to workspace During a run
    #   since these are wiped out along with the workspace, this function
    #   let's you see what the model was up to
    #
    # save the hebbs by analog
    if dataTypes.save_group_hebbs or dataTypes.save_prop_hebbs or \
       dataTypes.save_sp_hebbs or dataTypes.save_op_hebbs:
        dataTypes.out_file.write('\n\n')
        dataTypes.out_file.write('* * * Current Mapping Connections From '+dataTypes.explanandum.name+' to '+dataTypes.workspace.name+' * * *\n')
        # group hebbs
        if dataTypes.save_group_hebbs:
            dataTypes.out_file.write('  Groups:\n')
            write_these_hebbs(dataTypes.explanandum.group, dataTypes.workspace)
        # prop hebbs
        if dataTypes.save_prop_hebbs:
            dataTypes.out_file.write('  Props:\n')
            write_these_hebbs(dataTypes.explanandum.prop, dataTypes.workspace)
        # sp hebbs
        if dataTypes.save_sp_hebbs:
            dataTypes.out_file.write('  SPs:\n')
            write_these_hebbs(dataTypes.explanandum.sp, dataTypes.workspace)
        # op hebbs
        if dataTypes.save_op_hebbs:
            dataTypes.out_file.write('  Preds:\n')
            write_these_hebbs(dataTypes.explanandum.pred, dataTypes.workspace)
            dataTypes.out_file.write('  Objs:\n')
            write_these_hebbs(dataTypes.explanandum.obj, dataTypes.workspace)
        dataTypes.out_file.write('\n')

    # write inferred units to file
    if dataTypes.explanandum.has_inferred_units():
        dataTypes.out_file.write('\n\n')
        dataTypes.out_file.write('* * * * Inferred Groups and Props in Explanandum * * * *\n')
        # groups
        dataTypes.out_file.write('\nGroups:\n')
        for group in dataTypes.explanandum.group:
            if group.inferred: write_inferred_group(group)
        # props
        dataTypes.out_file.write('\nProps:\n')
        for prop in dataTypes.explanandum.prop:
            if prop.inferred:
                dataTypes.out_file.write(prop.name+':  ')
                for sp in prop.SPs:
                    if sp.pred == None:
                        dataTypes.out_file.write('[ NIL + ')
                    else:
                        dataTypes.out_file.write('[ '+sp.pred.name+' + ')
                    if sp.obj != None:
                        dataTypes.out_file.write(sp.obj.name+' ] ')
                    elif sp.child_prop != None:
                        dataTypes.out_file.write(sp.child_prop.name+' ] ')
                    else:
                        dataTypes.out_file.write('NIL ] ')
                dataTypes.out_file.write('\n')     # write one prop per line

               
# * * * * * * * * * The following are for save_as_sym_file() * * * * * * * * * * * * *

def wt_str(weight):
    # converst a weight to a string of form #.##, e.g., 0.9999 --> '1.00'
    result = '%.2f' % weight
    return result

def is_CE_group(group):
    # a boolean function that returns True iff the argument is a
    #   cause-effect group, in which case its name will start with CE
    #   surrounded by some number of quotes
    # ignore ' and " in the name; look for C; once found, next char Must be E
    if type(group) == dataTypes.CEGroup:
        return True
    found_C = False
    found_E = False
    found_violation = False
    result = False
    for i in xrange(len(group.name)):
        if group.name[i] == '"':
            pass
        elif group.name[i] == "'":
            pass
        elif group.name[i] == 'C':
            found_C = True
        elif group.name[i] == 'E' and found_C:
            result = True
            break
        else:
            found_violation = True # aside from quotes, you should only find C then E
            break
    return result

def get_cause_group(group):
    # given a cause-effect group, it returns the cause group
    target = None
    for sub_group in group.groups:
        # look for a group whose name is CAUSE#, where # is some number
        # use the strip_number() function to help you find it
        # once you find it, set target to it and return it
        if sub_group.unit:
            base_name = dataTypes.strip_number(sub_group.unit.name)
        else:
            base_name = 'NONE'

        # Note: string.find() returns the index of where the thing it's searching for in
        #       the string starts.  If it doesn't find the thing it's looking for
        #       then it returns -1
        if base_name.find('CAUSE') != -1 or base_name.find('Cause') != -1:
            target = sub_group
            break
    return target
        
def get_effect_group(group):
    # given a cause-effect group, it returns the effect group
    target = None
    for sub_group in group.groups:
        # look for a group whose name is EFFECT#, where # is some number
        # use the strip_number() function to help you find it
        # once you find it, set target to it and return it
        if sub_group.unit:
            base_name = dataTypes.strip_number(sub_group.unit.name)
        else:
            base_name = 'NONE'
        if base_name == 'EFFECT' or base_name == 'Effect':
            target = sub_group
            break
    return target

def save_as_sym_file(analog):
    # 10/08/07: Saves an analog to a build-readable .sym file
    #           Will be crucial for doing iterative schema induction
    #
    # first, name and open the output sym file
    out_sym_file_name = dataTypes.file_path+analog.name + '.sch' # dataTypes.data_directory+dataTypes.file_path+analog.name + '.sym' -- save it w/ 'sch' rather than 'sym' to avoid overwrite
    out_sym_file = open(out_sym_file_name, 'w')

    # write identifying notes at beginning
    out_sym_file.write('Note: '+out_sym_file_name+'\n')
    out_sym_file.write('Note: This SYM file generated by LISA.\n')

    # define the analog
    out_sym_file.write('\n')
    out_sym_file.write('Analog '+analog.name+'\n')

    # write the objects
    out_sym_file.write('\n')
    out_sym_file.write('  DefObjs\n')
    for obj in analog.obj:
        out_sym_file.write('    '+obj.name) # write object name
        # on same line write object semantics along with their weights
        for sem in obj.semantic:
            out_sym_file.write(' '+sem.unit.name+' ='+wt_str(sem.weight))
        # at end write object importance (? not sure build is yet up to reading these)
        # at end write semicolon and carriage return
        out_sym_file.write(' ;\n')
    # note that done defining objects
    out_sym_file.write('  end { def objs\n')

    # write the preds in hand-coded format
    # do it from the perspective of the props so you can keep track of which go together
    # for this purpose you'll have to keep track of the names of preds you've already
    # done so that you don't end up duplicating them
    saved_pred_names = [] # a list of the names of preds you've already written
    out_sym_file.write('\n')
    out_sym_file.write('  DefPreds\n')
    for prop in analog.prop:
        pred_name = ''  # this will be the name of the whole pred, not its roles
        # first, get the name of this prop's pred
        for sp in prop.SPs:
            if sp.pred != None:
                pred_name = sp.pred.name
                break # out of sp loop
        # if you don't have a name at this point, then continue on to the next prop
        if pred_name == '':
            continue
        else:
            # you've got a pred name...
            # now strip the name of the extra crap
            pred_name = pred_name.lstrip('"')
            pred_name = pred_name.rstrip('"')
            pred_name = dataTypes.strip_number(pred_name)
        # next, check to make sure the pred name is not on the list already processed...
        # and if it's not, then go ahead and process it
        if pred_name in saved_pred_names:
            continue
        else:
            # first, add it to the list of saved pred names
            saved_pred_names.append(pred_name)
            # NOW save the pred to file.  Do it from the perspective of the current prop
            out_sym_file.write('    '+pred_name+'\n') # write the pred name to file...
            # iterate through the prop's SPs & write their preds' semantics
            for sp in prop.SPs:
                if sp.pred != None:
                    out_sym_file.write('     [')              # and open its role
                    for sem in sp.pred.semantic:
                        out_sym_file.write(' '+sem.unit.name+' ='+wt_str(sem.weight))
                    # at end write pred importance (? not sure build is yet up to reading these)
                    # at end write close bracket and carriage return
                    out_sym_file.write(' ]\n')
            # write the semicolon to end definition of last pred
            out_sym_file.write('     ; { done with '+pred_name+'\n')                     
            
    # note that done defining preds
    out_sym_file.write('  end { def preds\n')
    saved_pred_names = [] # re-init the list of the names of preds you've already written

    # write the props...
    out_sym_file.write('\n')
    out_sym_file.write('  DefProps\n')
    for prop in analog.prop:
        # if there exists at least one SP...
        # write the prop name, the pred name and an open paren
        if prop.SPs[0] != None:
            pred_name = dataTypes.strip_number(prop.SPs[0].pred.name)
            out_sym_file.write('    '+prop.name+' '+pred_name+' (')
        # for each SP on the prop, write the obj name or the child prop name
        for SP in prop.SPs:
            if SP.obj != None:
                out_sym_file.write(' '+SP.obj.name)
            if SP.child_prop != None:
                out_sym_file.write(' '+SP.child_prop.name)
        # finally, close the prop with a close paren, write import, write ; and \n
        # out_sym_file.write(' ) '+str(prop.importance)+' ;\n')
        # finally, close the prop with a close paren, write Inductive Confidence, write ; and \n -- inductive confidence replaced importance here 12/30/13
        #   Note: Importance still matters; for convenience, we're just not writing and reading it to/from .sym files
        #   This is laziness, not a theoretical rejection of pragatic centrality
        out_sym_file.write(' ) %.3f ;\n'%prop.inductive_confidence.value)
        
    # note that done defining props
    out_sym_file.write('  end { def props\n')
        
    # write the groups... again, this'll be interesting
    # cause groups should be written the short way, e.g., cause ( P1 P2 ) ( P3 P4 ) ;
    # other groups should be written out the long way
                           
    # So that groups don't get written twice when they are cause and effect groups
    # (recall that the iterator goes through all groups, so cause and effect groups
    #  under a CE group will effectively be visited twice: Once as the cause and effect
    #  groups under a CE group and once in their own right), we need to keep track of
    #  which groups have been visited.  For this, we shall make a visited[] array.
    visited = []
    for group in analog.group:
        visited.append(False)  # mark all groups as not visited
                 
    out_sym_file.write('\n')
    out_sym_file.write('  DefGroups\n')
    for group in analog.group:
        if not visited[group.index]:
            # first, mark the group as visited, not that it matters at this level
            visited[group.index] = True
            # now check to see whether it's a CE group:
            # if it is, then do one thing with it...
            if is_CE_group(group):
                # 1) The cause group: write 'Cause ( ' to the sym file
                out_sym_file.write('    Cause (')
                # 2) find the cause group, and for each prop therein, write is's
                #    name to the sym file.  after all are done, write ' )'
                cause = get_cause_group(group)
                # 2.1) Mark the cause group as visited
                if cause:
                    visited[cause.unit.index] = True
                    # 2.2) now write the cause group's props' names to file
                    for prop in cause.unit.prop:
                        out_sym_file.write(' '+prop.unit.name)
                    # 2.3) finally, write the close parens and open the parens for the effect group
                    out_sym_file.write(' ) ( ')
                # 3) find the effect group, and for each prop therein, write it's
                #    name to the sym file.  after all done, write ), causal power, and ;
                effect = get_effect_group(group)
                # 3.1) mark the effect as visited
                if effect:
                    visited[effect.unit.index] = True
                    # 3.2) write the effect group's props' names to file
                    for prop in effect.unit.prop:
                        out_sym_file.write(' '+prop.unit.name)
                        
##                # 3.3) finally, write the close parens and the causal strength, followed by ; and \n
##                # 3.3.1) Compute causal power as weighted average of power semantics
##                #        Recall that causal strength semantics are called "CS_0.0"..."CS_1.0"
##                numerator = 0  # of weighted average: sum of (strength * weight)
##                denominator = 0 # of weighted average: sum of weight
##                causal_strength = 0 # weighted average: numerator/denominator
##                for sem in group.semantic:
##                    if sem.unit.name[0] == 'C' and sem.unit.name[1] == 'S':
##                        # you've got a causal strength semantic... pull out the strength string
##                        str_string = ''
##                        for j in xrange(2):  # gonna take three (0...2) characters
##                            i = j + 3        # i is the index: 3...5
##                            str_string = str_string + sem.unit.name[i]
##                        strength = float(str_string)
##                        # assuming you've correctly pulled the causal strength from the
##                        # name of the semantic unit, multiply it by the connection weight
##                        # and put that result in the numerator; put the connection weight into
##                        # the denominator
##                        numerator += strength * sem.weight
##                        denominator += sem.weight
##                if denominator > 0:
##                    causal_strength = numerator/denominator
##                if causal_strength > 0:
##                    out_sym_file.write(' )'+wt_str(causal_strength)+' ;\n')
##                else:
##                    out_sym_file.write(' ) ;\n')

                # 3.3) finally, write the close paren and the Inductive Confidence (not causal strength) followed by ; and \n  (12/30/13, vers Ex. 2.01)
                out_sym_file.write(' ) %.3f ;\n'%group.inductive_confidence.value)
                
            # ... if it is not a CE group, then write it in long format
            else:
                # mark it as visited
                visited[group.index] = True
                # write the group name
                out_sym_file.write('    '+group.name+'\n')
                # list it's groups, followed by ;
                out_sym_file.write('       Groups:')
                for gr2 in group.groups:
                    out_sym_file.write(' '+gr2.unit.name)
                out_sym_file.write(' ;\n')
                # list it's props, followed by ;
                out_sym_file.write('       Props:')
                for prop in group.prop:
                    out_sym_file.write(' '+prop.unit.name)
                out_sym_file.write(' ;\n')
                # list its semantics, followed by ;
                out_sym_file.write('       Semantics:')
                for sem in group.semantic:
                    out_sym_file.write(' '+sem.unit.name)
                out_sym_file.write(' ;\n')
                # end it with %%
                out_sym_file.write('      %%\n')
    
    # note that done defining groups
    out_sym_file.write('  end { def groups\n')
    
    # note that the analog is done
    out_sym_file.write('done { analog '+analog.name+'\n')

    # finally, close the output sym file
    out_sym_file.close
        
        
