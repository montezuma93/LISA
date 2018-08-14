# graphics.py
#
# John Hummel, 5/25/08, 10/11/09
#
# advanced GUI functionality for vers Ex1.15 started 9/15/09

import dataTypes
import pygame, sys, os, random
from pygame.locals import *
import interrogate
import LISA_gui
from LISA_gui import *

# Define colors
BLACK = (0,0,0)
WHITE = (255,255,255)
LIGHTGRAY = (200,200,200)
RED = (255,0,0)
GREEN = (0,255,0)
YELLOW = (255,255,50)
ORANGE = (255,100,0)
BLUE = (50,150,255)
LIGHTBLUE = (100, 175, 255)
GRAY = (150,150,150)
DARKGRAY = (50, 50, 50)
DARKBLUE = (0,0,150) #(0, 0, 255)

# the following input functions not curretly used but could be very useful

def key_to_letter(key_val, key_mod=1):# mod=1 means upper-case; mod = 0 means lower-case
    # takes a key value as recorded by the event listner and returns the corresponding letter
    # a (and A) is key value 97; z (and Z) is key value 122
    #
    # first, conver the key value to the ASCII value: A = 65; Z is 90,
    #   so ASCII = key value minus 32
    if key_mod == 0: # lower case
        ascii = key_val
    elif key_mod == 1: # upper case
        ascii = key_val - 32
    else:
        print 'error in key_to_letter: key_mod = ',key_mod
        sys.exit()
    if ascii < 256:
        return chr(ascii)
    else:
        return ' ' # return space is not a valid ascii value

def get_keypress(trigger=None):
    # this is my version
    # it waits for the user to enter a key in order to move on
    all_done = False
    while not all_done:
        event_list = pygame.event.get()
        for event in event_list:
            # process the_event according to what type of event it is
            if event.type == QUIT:
                sys.exit()
            elif event.type == KEYDOWN:
                # print event.key, key_to_letter(event.key, event.mod)
                if key_to_letter(event.key, event.mod) == trigger:
                    all_done = True
                elif trigger == None:
                    # if there's no trigger, then assume that the program
                    # wants to know what the user entered
                    all_done = True
                    return key_to_letter(event.key, event.mod)

def draw_all_names():
    # called at the beginning of the phase set; also called after translation:
    # without changing anyone's location, simply draws all units' & analogs' names and status
    # first, black-out the screen
    dataTypes.graphics_window.fill(BLACK)
##    pygame.display.flip()  <-- this was causing the flickering upon unit infernce

    # now draw all names
    for analog in dataTypes.analog:
        if dataTypes.graphic_show_LTM or analog.is_driver or analog.is_recip:
            analog.draw_name()
    for semantic in dataTypes.op_semantic:
        semantic.draw_name(WHITE)
    for semantic in dataTypes.group_semantic:
        semantic.draw_name(WHITE)

def draw_run_menu():
    # Display the list of commands available to the user
    # as noted below, the menus don't work during the run, so show these options
    #  in the space where the windows *would* be shown
    #
    # first, draw the white rectangle across top of screen
    pygame.draw.rect(dataTypes.graphics_window,WHITE,(0,0,screen_width,menu_height+1))
    message = '(S)peed/step,   (=) go faster,   (-) go slower,   show/hide (L)TM,   (Q)uit simulation,   (I)nterrogate simulation,'
    message = message + '   click unit to interrogate,  (P)retty format on/off'
    # define the text rect
    text_rect = [0,0,screen_width,menu_height+1] # this text goes at the very top
    # erase old text
    # dataTypes.graphics_window.fill(BLACK, text_rect)
    # write new text
    # render the text (??)
    the_text  = LISA_gui.menufont.render(message, True, DARKBLUE, WHITE)
    # and blit it to the screen
    dataTypes.graphics_window.blit(the_text, text_rect)

def set_unit_locations():
    # set the analogs' and units' locations and draws their names & rectangles
    last_location = [0, 20, 0, 0] # <-- 100 here to leave room for text (iteration, etc.)
    for analog in dataTypes.analog:
        if dataTypes.graphic_show_LTM or analog.is_driver or analog.is_recip:
            last_location = analog.set_location(last_location)
            # [last_location[0],last_location[1],last_location[2],last_location[3]] = analog.set_location(last_location)
            # the reason for this convoluted way of pasing back the last location is in order to
            #   pass bt value rather than pointer.  Passing by pointer was causing confusion over
            #   the location of the last analog (i.e., the workspace)
            
    # set the semantics' locations
    # last_location is currently set to the location of the last Analog
    # set it to a fictional location below the last analog and one unit to the left of the left
    #   edge of the screen.  Then the semantic units' own set_location function will take care
    #   of the rest
    last_location[0] = 1 - dataTypes.unit_width # left_x of "last" unit left of screen edge
    last_location[1] = last_location[1] + last_location[3]     # top below bottom of last analog
    last_location[2] = dataTypes.unit_width                        # right_y of "last" unit at left edge
    last_location[3] = dataTypes.unit_height # bottom_y below top_y
    for semantic in dataTypes.op_semantic:
        last_location = semantic.set_location(last_location, True) # true here means "stay narrow": bump down to next line at screen right edge
    for semantic in dataTypes.group_semantic:
        last_location = semantic.set_location(last_location, True)

    # now display everything to screen
    draw_all_names()
    draw_run_menu()

##def interpret_key_command(command, simulation):
##    # takes a command from the user during run and acts on it
##    if command == 's':
##        # toggle speed/step
##        simulation['pause'] = not(simulation['pause'])
##    elif command == '=' or command == '+':
##        # speed up the simulation
##        simulation['gr_refresh_rate'] *= 2
##    elif command == '-' or command == '_':
##        # slow down the simulation
##        simulation['gr_refresh_rate'] /= 2
##        if simulation['gr_refresh_rate'] < 1:
##            simulation['gr_refresh_rate'] = 1
##    elif command == 'l' or command == 'L':
##        # toggle show/hide ltm and reset the units' locations
##        dataTypes.graphic_show_LTM = not(dataTypes.graphic_show_LTM)
##        set_unit_locations()
##    elif command == 'q' or command == 'Q':
##        # quit simulation
##        simulation['simulation_complete'] = True
##    elif command == 'i' or command == 'I':
##         # interrogate simulation
##         interrogate.interrogate(simulation)
##    elif command == 'p' or command == 'P':
##        dataTypes.pretty_format = not(dataTypes.pretty_format)
##        set_unit_locations()

def mouse_in_rect(mouse_x, mouse_y, rect):
    # returns True iff mouse x and y are within rect
    truth_val = (mouse_x >= rect[0]) and (mouse_x <= rect[0] + rect[2]) and \
                (mouse_y >= rect[1]) and (mouse_y <= rect[1] + rect[3])
    return truth_val
    

def interpret_mouse_event(event):
    # interprets a mouse-up event: if user clicked on unit, allow to interrogate unit
    clicked_analog = None
    clicked_unit   = None
    unit_clicked = False # to return so we'll know, ouside, whether it was a unit that was clicked
    # first, check to see whether user clicked within bounds of an analog
    mouse_x = event.pos[0]
    mouse_y = event.pos[1]
    for analog in dataTypes.analog:
        if mouse_in_rect(mouse_x, mouse_y, analog.rect):
            clicked_analog = analog
            break
    # now, if an analog was clicked, check to see whether a unit in that analog was clicked
    if clicked_analog:
        # check the groups...
        for group in analog.group:
            if mouse_in_rect(mouse_x, mouse_y, group.rect):
                clicked_unit = group
                break
        # if not in a group, check the props...
        if not(clicked_unit):
            for prop in analog.prop:
                if mouse_in_rect(mouse_x, mouse_y, prop.rect):
                    clicked_unit = prop
                    break
        # if not in a prop, check the sps...
        if not(clicked_unit):
            for sp in analog.sp:
                if mouse_in_rect(mouse_x, mouse_y, sp.rect):
                    clicked_unit = sp
                    break
        # if not in an sp, check the preds...
        if not(clicked_unit):
            for pred in analog.pred:
                if mouse_in_rect(mouse_x, mouse_y, pred.rect):
                    clicked_unit = pred
                    break
        # if not in a pred, check the objs...
        if not(clicked_unit):
            for obj in analog.obj:
                if mouse_in_rect(mouse_x, mouse_y, obj.rect):
                    clicked_unit = obj
                    break
    # check to see whether a semantic unit was clicked
    if not(clicked_analog):
        for sem in dataTypes.op_semantic:
            if mouse_in_rect(mouse_x, mouse_y, sem.rect):
                clicked_unit = sem
                break
        if not(clicked_unit):
            for sem in dataTypes.group_semantic:
                if mouse_in_rect(mouse_x, mouse_y, sem.rect):
                    clicked_unit = sem
                    break
        
    # finally, if a unit was clicked, then interrogate that unit
    # for now, just rint to the python window
    if clicked_unit:
        interrogate.interrogate_unit(clicked_unit)
        unit_clicked = True

    return unit_clicked

def translate_unit(unit, delta):
    unit.rect[0] += delta[0]
    unit.rect[1] += delta[1]
    unit.act_rect[0] += delta[0]
    unit.act_rect[1] += delta[1]

def translate_display(delta):
    # delta contains delta_x and delta_y of display location
    for analog in dataTypes.analog:
        if dataTypes.graphic_show_LTM or analog.is_driver or analog.is_recip:
            # move the analog
            analog.rect[0] += delta[0]
            analog.rect[1] += delta[1]
            # move its units
            for unit in analog.group:
                translate_unit(unit, delta)
            for unit in analog.prop:
                translate_unit(unit, delta)
            for unit in analog.sp:
                translate_unit(unit, delta)
            for unit in analog.pred:
                translate_unit(unit, delta)
            for unit in analog.obj:
                translate_unit(unit, delta)
    # move the semantics
    for unit in dataTypes.op_semantic:
        translate_unit(unit, delta)
    for unit in dataTypes.group_semantic:
        translate_unit(unit, delta)
    # update the display
    draw_all_names()

def update_display(simulation):         # simulation is a dictionary that contains all global variables

    ########################################
    ### UPDATE GUI FOR CURRENT ITERATION ###
    ########################################

    # Update text display (iteration, etc)
    message = 'Seq.: '+str(simulation['sequence'].index)+'       Seq. It. = max('+str(simulation['iteration'])
    message = message + ', '+str(simulation['phase_iteration'])+')'
    message = message + '         Tot. It.: '+str(simulation['total_iteration'])
    message = message + '         Top-Down OK = '+str(simulation['top_down_ok'])
    # define the text rect
    text_rect = [10,dataTypes.screen_height - 20,dataTypes.screen_width,dataTypes.text_height] # this text goes at the very bottom
    # erase old text
    dataTypes.graphics_window.fill(BLACK, text_rect)
    # write new text
    # render the text (??)
    the_text  = dataTypes.symfont.render(message, True, WHITE, BLACK)
    # and blit it to the screen
    dataTypes.graphics_window.blit(the_text, text_rect)
    
    # Update activation display
    for analog in dataTypes.analog:
        if dataTypes.graphic_show_LTM or analog.is_driver or analog.is_recip:
            for group in analog.group:
                group.draw_act(group.act, ORANGE, group.retrieved)
            for prop in analog.prop:
                if prop.mode == -1: color = RED
                else: color = YELLOW
                prop.draw_act(prop.act, color, prop.retrieved)
            for sp in analog.sp:
                sp.draw_act(sp.act, BLUE, sp.retrieved, sp.output, LIGHTBLUE)
            for pred in analog.pred:
                pred.draw_act(pred.act, GREEN, pred.retrieved)
            for obj in analog.obj:
                obj.draw_act(obj.act, RED, obj.retrieved)
    for semantic in dataTypes.op_semantic:
        semantic.draw_act(semantic.act, WHITE)
    for semantic in dataTypes.group_semantic:
        semantic.draw_act(semantic.act, WHITE)

    # the menus don't work with the graphics during a run (I need to work on this), so for now
    #   don't bother to show the menus and show instead the graphics hot keys
##    # new for vers Ex 1.15 (9/15/09): update all window displays
##    for window in LISA_gui.windows:
##        window.draw()
    # but DO show the status window
    status_window.draw()

    pygame.display.update()

    ############################
    ### CHECK FOR USER INPUT ###
    ############################

    # NOTE: need to somehow integrate the stuff below w/ LISA_gui!  (10/11/09)

    wait = True # set wait to true initially just to get into the event listner
    while wait:
        wait = simulation['pause'] # if simulation not paused, turn off wait immediately...
        # ... but now you're already in the event listner... so listen!
        event_list = pygame.event.get()
        if event_list:
            for event in event_list:
                key = ''
                
                # process the_event according to what type of event it is
                if event.type == QUIT:  # this is clover-Q when you're runng through Idle
                    pygame.display.quit()
                    sys.exit()

                # * * * key down * * *
                elif event.type == KEYDOWN:
                    if event.key == K_ESCAPE:
                        pygame.display.quit()
                        simulation['terminate_simulation'] = True
                    # if not quit, get key code
                    elif event.key < 256:
                        key = key_to_letter(event.key, event.mod)
                    elif event.key >= 256 and event.key <= 265:
                        key = (event.key - 256) # numbers 0...9
                    elif event.key >= 266 and event.key <= 272:
                        if event.key == 266: key = '.'
                        elif event.key == 267: key = '/'
                        elif event.key == 268: key = '*'
                        elif event.key == 269: key = '-'
                        elif event.key == 270: key = '+'
                        elif event.key == 271: key = 'enter'
                        elif event.key == 272: key = '='

                    # handle the key-down (hotkeys) event
                    if   key in ['q','Q']:
                        simulation['terminate_simulation'] = True
                        simulation['simulation_complete'] = True
                    elif key in ['s','S']: # change step/speed mode
                        simulation['pause'] = not simulation['pause']
                        wait = simulation['pause'] # and reset wait to new value of pause
                    elif key in ['l','L']:
                        dataTypes.graphic_show_LTM = not dataTypes.graphic_show_LTM
                        set_unit_locations()
                    elif key in ['=','+']:
                        # speed up the simulation
                        simulation['gr_refresh_rate'] *= 2
                    elif key in ['-','_']:
                        # slow down the simulation
                        simulation['gr_refresh_rate'] /= 2
                        if simulation['gr_refresh_rate'] < 1:
                            simulation['gr_refresh_rate'] = 1
                    elif key in ['i','I']:
                         # interrogate simulation
                         interrogate.interrogate(simulation)
                    elif key in ['p','P']:
                        dataTypes.pretty_format = not(dataTypes.pretty_format)
                        set_unit_locations()
                    else:
                        wait = False # on any other key, advance the simulation one stap
        
                # Mouse down: This'll be much of the menu shit
                elif event.type == MOUSEBUTTONDOWN:
                    # check to see whether user clicked on status window
                    # keep track of whether anything in particular (a unit, the status window)
                    #   was clicked
                    # if not, then the user clicked the background and wants to move the display
                    something_clicked = False 
                    if   status_window.top_bar_clicked(event.pos):
                        status_window.top_bar_selected = True
                        something_clicked = True
                    elif status_window.corner_clicked(event.pos):
                        status_window.corner_selected = True
                        something_clicked = True
                    else:
                        something_clicked = interpret_mouse_event(event)
                    if not something_clicked:
                        # the user clicked and wants to translate the background
                        move_display = True
                        while move_display:
                            for sub_event in pygame.event.get():
                                if sub_event.type == MOUSEBUTTONUP:
                                    move_display = False # done
                                    interpret_mouse_event(sub_event)  # attempt to query unit
                                elif sub_event.type == MOUSEMOTION:
                                    # Move!
                                    translate_display(sub_event.rel) # event.rel is delta motion
                # Mouse up: This'll be more of the menu shit
                elif event.type == MOUSEBUTTONUP:
                    # deselect the status window
                    status_window.top_bar_selected = False
                    status_window.corner_selected  = False

                # move or resize status window if necessary
                if event.type == MOUSEMOTION:
                    if status_window.top_bar_selected:
                        status_window.move(event.rel)
                    if status_window.corner_selected:
                        status_window.resize(event.rel)

##    if simulation['pause']:
##        # the commented-out code above waits for a keypress only.
##        # the smarter code below responds to other stuff, including mouse events, as well
##        wait = True
##        while wait:
##            for event in pygame.event.get():
##                # if hasattr(event,'key'):
##                if event.type == KEYUP:
##                    # first check for break command
##                    if event.key == K_ESCAPE:
##                        sys.exit(0)
##                    else:
##                        command = key_to_letter(event.key, event.mod)
##                        interpret_key_command(command, simulation)
##                        # on any keypress, advance the simulation
##                        wait = False
##                elif event.type == MOUSEBUTTONUP:
##                    # the user has clicked on something: check to see what
##                    interpret_mouse_event(event)
##                elif event.type == MOUSEBUTTONDOWN:
##                    # allow the user to click and drag display
##                    
##                    move_display = True
##                    while move_display:
##                        for sub_event in pygame.event.get():
##                            if sub_event.type == MOUSEBUTTONUP:
##                                move_display = False # done
##                                interpret_mouse_event(sub_event)  # attempt to query unit
##                            elif sub_event.type == MOUSEMOTION:
##                                # Move!
##                                translate_display(sub_event.rel) # event.rel is delta motion
##    else:  # not paused
##        for event in pygame.event.get():
##            if event.type == KEYUP: 
##                # first check for break command
##                if event.key == K_ESCAPE:
##                    sys.exit(0)
##                else:
##                    command = key_to_letter(event.key, event.mod)
##                    interpret_key_command(command, simulation)
##            elif event.type == MOUSEBUTTONUP:
##                # the user has clicked on something: check to see what
##                interpret_mouse_event(event)
##            elif event.type == MOUSEBUTTONDOWN:
##                # allow the user to click and drag display
##                move_display = True
##                while move_display:
##                    for sub_event in pygame.event.get():
##                        if sub_event.type == MOUSEBUTTONUP:
##                            move_display = False # done
##                            interpret_mouse_event(sub_event)  # attempt to query unit
##                        elif sub_event.type == MOUSEMOTION:
##                            # Move!
##                            translate_display(sub_event.rel) # event.rel is delta motion
    
