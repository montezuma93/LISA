def read_batch_file(batch_list):
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
    batch_path = ''
    batch_file_name = ''
    while not(local menu == 'g' or local_menu == 'a'):
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
        elif local_menu == 'f':
            batch_file_name = raw_input('batch file name (with path if necessary)>')
        elif local_menu == 'g' and batch_file_name != '':
            # this is where the hard work comes: read the file and construct the batch_list
            # remember to report an error if the file fails to specify necessary info (good luck)
            
            pass
        elif local_menu == 'a':
            batch_list = []

    # finally, at the end of the day, return the batch list
    return batch_list
