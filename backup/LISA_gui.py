# LISA_gui.py   10/10/09 made from just_gui.py
#
# for version ex 1.15
#
# develop the gui stuff in a separate program (this one) and when it works, copy and
#   paste it into dataTypes.py
#

# basic includes, etc., copied from dataTypes.py: no need to copy back into dataTypes
import pygame, sys, os, random
from pygame.locals import *
import dataTypes
from dataTypes import *

# create a menu font for the GUI
menu_text_height = 22
menufont = pygame.font.SysFont('courier', menu_text_height)


# redefine GREEN in thsi context
GREEN = (50,200,100)

# * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *   
#       new GUI stuff (vers ex1.15, 9/15/09): Copy the following into dataTypes.py
# * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

def blit_text(message, line):
    # formats, renders and blits a message to screen on the designated line
    #   but does NOT update the screen.
    # it is for use in cases where it is necessary to put several lines of
    #   text on the screen
    # 1) render the message
    the_text  = font.render(message, True, BLUE, (250,250,250))
    # 2) set it's location
    text_rect = [1,line * text_height + 1,screen_width,text_height]
    # 3) blit it to the screen
    screen.blit(the_text, text_rect)

def abort():
    # this function called when user hits Esc:
    # asks: do you really want to quit?, etc.
    screen.fill((250,250,250))# GRAY)  # fill it with a middle gray...
    blit_text('Do you really want to quit? (y/n)',5)
    pygame.display.update()
    quit_response = get_keypress()
    if quit_response in ['y','Y']:
        # close the screen
        pygame.display.quit()
        # close the data file
        data_file.close()
        # and quit
        sys.exit()
    else:
        # simply resume
        screen.fill((250,250,250))# GRAY)  # fill it with a middle gray...
        pygame.display.update()
    

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
        # sys.exit()
        abort_experiment()
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
                # sys.exit()
                return key_to_letter(abort_experiment())
            elif event.type == KEYDOWN:
                if event.key == K_ESCAPE:
                    # sys.exit(0)
                    abort_experiment()
                elif key_to_letter(event.key, event.mod) == trigger:
                    all_done = True
                elif trigger == None:
                    # if there's no trigger, then assume that the program
                    # wants to know what the user entered
                    all_done = True
                    return key_to_letter(event.key, event.mod)

def read_string(x, y, width, height):
    '''reads and returns a string of text entered in the pygame window
    x, y, width and height are for the text rect tell it where to print the text as it is being written'''
    string   = ''
    all_done = False
    # make the text rect
    text_rect = [x,y,width,height]
    while not all_done:
        event_list = pygame.event.get()
        for event in event_list:
            # process the_event according to what type of event it is
            if event.type == QUIT:
                # sys.exit()
                return key_to_letter(abort_experiment())
            elif event.type == KEYDOWN:
                if event.key == K_ESCAPE:
                    # sys.exit(0)
                    return None # exit reading
                elif event.key == K_RETURN:
                    all_done = True
                    return string
                elif event.key == 8:  # delete key
                    # delete the last char added to the string and show new state of string:
                    # make a new copy of te string sans last char and then set string to that
                    new_string = ''
                    for i in xrange(len(string)-1):
                        new_string += string[i]
                    string = new_string
                    # 1) render the message
                    the_text  = menufont.render(string+'   ', True, BLACK, YELLOW) # the +' 'is in hopes of erasing the deleted char
                    # 2) blit it to the screen
                    graphics_window.blit(the_text, text_rect)
                    # 3) update the screen
                    pygame.display.update()
                else:
                    # add the char to the string and show new state of string
                    string += key_to_letter(event.key, event.mod)
                    # 1) render the message
                    the_text  = menufont.render(string, True, BLACK, YELLOW)
                    # 2) blit it to the screen
                    graphics_window.blit(the_text, text_rect)
                    # 3) update the screen
                    pygame.display.update()

# message rect: a generic rectangle for displaying text, including menu options
class MessageRect(object):
    '''a rect for posting messages: has the ability to display more than one line'''
    def __init__(self, x, y, width, height, title):
        self.title_rect = [x, y, width, text_height+2]
        self.title = title
        self.rect = [x, y, width, height]
        self.messages = [] # a list of things to write
        self.back_color = WHITE
        self.boarder_color = LIGHTBLUE
        self.visible = True  # if and only if visible can it be clicked (for use w/ menus)

    def draw(self, alone = False): # if alone, then update display after draw; otherwise wait
        # draw the title rect
        pygame.draw.rect(graphics_window, self.boarder_color, self.title_rect, 0)
        # pygame.draw.rect(graphics_window, self.boarder_color, self.title_rect, 2)
        # center the title inside the title rect: make the text_rect lie in the center of the title_rect
        text_rect_width = len(self.title) * text_height + 4
        text_rect_left = self.title_rect[0] + int(round((self.title_rect[2]-text_rect_width)/2.0))
        text_rect = [text_rect_left, self.title_rect[1] + 2, text_rect_width, self.title_rect[3]]
        the_text = symfont.render(self.title, True, BLACK, self.boarder_color)
        graphics_window.blit(the_text, text_rect)

        # Draw the main rect (i.e., the one containing the messages)
        # draw the background rect
        pygame.draw.rect(graphics_window, self.back_color, self.rect, 0)
        # draw.rect(window, color, rectangle info, width=0) if width = 0, rect will be filled

        # now write your messages, line by line, starting with the LAST message at the bottom of
        #   of the rect
        if self.messages: # only try to do this if there a
            line = 0
            last_index = len(self.messages)
            index = last_index
            while index > 0:
                index -= 1  # the first time throug the loop, index will start at len(messages) - 1
                line += 1   # the first line will be numbered 1
                # find the y location of the upper left corner of the text rect
                ypos = self.rect[1] + self.rect[3] - text_height * line
                # now make sure the ypos is not higher than the top of the rect;
                #  if it IS higher, then break out of the loop and stop printing
                if ypos < self.rect[1]: break
                else:
                    # if you've made it this far, then make the text rect and blit the text
                    text_rect = [self.rect[0] + 1, ypos, self.rect[2] - 1, text_height]
                    the_text = symfont.render(self.messages[index], True, DARKGRAY, self.back_color)
                    graphics_window.blit(the_text, text_rect)

        # if this is the only thing you're drawing, then update the display
        if alone: pygame.display.update()

    def erase(self, alone=False):
        pygame.draw.rect(graphics_window, BLACK, self.title_rect, 0)
        pygame.draw.rect(graphics_window, BLACK, self.rect, 0)
        if alone: pygame.display.update()

    def clicked(self, mouse_pos):
        # a boolean function that returns true iff (a) the message rect is visible and (b) it has been clicked
        return_val = False
        # iff you're visible, check to see whether mouse if over you
        if self.visible:
            if mouse_pos[0] >= self.rect[0] and \
               mouse_pos[0] <= self.rect[0] + self.rect[2] and \
               mouse_pos[1] >= self.rect[1] and \
               mouse_pos[1] <= self.rect[1] + self.rect[3]: return_val = True
        return return_val

def distance(vect1, vect2):
    if len(vect1) == len(vect2):
        dist = 0.0
        for i in xrange(len(vect1)):
            dist += pow((vect1[i] - vect2[i]),2)
        dist = pow(dist, 0.5)
        return dist
    else:
        print 'error in distance(): vector of unequal len()'
            
class MutableMessageRect(MessageRect):
    # this is just a message rect that can be moved, resized, etc
    # Not for use with menu bars, etc
    def __init__(self, x, y, width, height, title):
        self.title_rect = [x, y, width, text_height+2]
        self.title = title
        self.rect = [x, y + self.title_rect[3], width, height - self.title_rect[3]]
        self.messages = [] # a list of things to write
        self.back_color = WHITE
        self.boarder_color = LIGHTBLUE
        self.visible = True  # if and only if visible can it be clicked (for use w/ menus)
        self.messages = [] # a list of things to write
        self.top_bar_selected = False # true when user has down-cicked in top bar; in such case prepare to move
        self.corner_selected = False # true whan user has clicked on lower right corner; in such case, resize

    def set_location(self, new_x, new_y):
        self.erase()
        self.title_rect[0] = new_x
        self.title_rect[1] = new_y
        self.rect[0] = new_x
        self.rect[1] = new_y + self.title_rect[3]
        self.draw()
        
    def move(self, (del_x, del_y)):
        # when user grabs and drags window it moves
        # if alone, then redraw and update screen
        self.erase()
        self.rect[0] += del_x
        self.rect[1] += del_y
        self.title_rect[0] += del_x
        self.title_rect[1] += del_y
        self.draw()

    def resize(self, (del_x, del_y)):
        # when user grabs and drags lower right corner, window resizes
        self.erase()
        self.rect[2] += del_x
        self.rect[3] += del_y
        self.title_rect[2] += del_x
        self.draw()
        
    def add_message(self, message):
        # adds ONE new message to the rect's list of messages
        # i.e., message must be a string, NOT a list of strings
        self.messages.append(message)

    def add_messages(self, messages):
        # adds a LIST of mesages all at once
        for message in messages:
            self.add_message(message)
        
    def set_messages(self, messages):
        # inits the list of messages and sets it to the List passed in
        self.messages = []
        self.mesages = messages

    def top_bar_clicked(self, mouse_pos):
        # returns true if the user has down-clicked in the top bar: in this case, move
        return_val = False
        if mouse_pos[0] >= self.title_rect[0] and \
           mouse_pos[0] <= self.title_rect[0] + self.title_rect[2] and \
           mouse_pos[1] >= self.title_rect[1] and \
           mouse_pos[1] <= self.title_rect[1] + self.title_rect[3]: return_val = True
        return return_val

    def corner_clicked(self, mouse_pos):
        # returns true if the user has down-clicked lower-right corner: in this case, resize
        return_val = False
        corner = (self.rect[0]+self.rect[2],self.rect[1]+self.rect[3])
        if distance(corner, mouse_pos) <= 5: return_val = True
        return return_val

    def save_to_file(self):
        # saves contents of message rect to file
        if dataTypes.out_file_name == '': file_name = 'dummy'
        else: file_name = dataTypes.out_file_name

##        # DIAG
##        print 'dataTypes.data_directory = ',dataTypes.data_directory
##        print 'dataTypes.file_path = ',dataTypes.file_path
##        print 'file_name = ',file_name
##        # end DIAG        
        
        out_file = open(file_name+'.status','w')
        
        for message in self.messages:
            out_file.write(message+'\n')

        out_file.close()
        
menu_width  = 220
menu_height = 20

class MenuRect(object):
    '''a rect specifically for use in creating menus'''
    def __init__(self, x, y, title):
        self.title = title
        self.rect = [x, y, menu_width, menu_height]
        self.back_color = WHITE
        self.boarder_color = WHITE
        self.visible = True  # if and only if visible can it be clicked (for use w/ menus)
        self.text_color = BLACK

    def draw(self, alone = False): # if alone, then update display after draw; otherwise wait
        pygame.draw.rect(graphics_window, self.back_color, self.rect, 0)
        the_text = menufont.render(self.title, True, self.text_color, self.back_color)
        graphics_window.blit(the_text, self.rect)

        # if this is the only thing you're drawing, then update the display
        if alone: pygame.display.update()

    def erase(self, alone=False):
        pygame.draw.rect(graphics_window, BLACK, self.rect, 0)
        if alone: pygame.display.update()

    def clicked(self, mouse_pos):
        # a boolean function that returns true iff (a) the message rect is visible and (b) it has been clicked
        return_val = False
        # iff you're visible, check to see whether mouse if over you
        if self.visible:
            if mouse_pos[0] >= self.rect[0] and \
               mouse_pos[0] <= self.rect[0] + self.rect[2] and \
               mouse_pos[1] >= self.rect[1] and \
               mouse_pos[1] <= self.rect[1] + self.rect[3]: return_val = True
        return return_val


class MenuItem(MenuRect):
    # this is an unmutable message rectangle that serves as a menu item, e.g., "Open" in the menu "File"
    def __init__(self, x, y, title, parent, hot_key='', extra_text=''):
        # hot key is the keyboard key that activated the menu item (whether it's visible or not)
        self.rect = [x, y, menu_width, menu_height]
        self.parent = parent # parent is the menu that owns the item
        self.return_val = (self.parent.title,title)  # return val is the text the menu item returns when chosen
        self.title = title
        self.write_path = False
        if hot_key:
            self.title += ' ('+hot_key+')'
        if extra_text == '*path*':
            self.write_path = True
        else:
            self.title += extra_text
        self.back_color = WHITE
        self.boarder_color = WHITE
        self.visible = False  # if and only if visible can it be clicked; false by default
        self.hot_key = hot_key
        self.text_color = DARKBLUE

    def draw(self, alone = False): # if alone, then update display after draw; otherwise wait
        pygame.draw.rect(graphics_window, self.back_color, self.rect, 0)
        if self.write_path:
            the_text = menufont.render(''.join([self.title,':',dataTypes.file_path]), True, self.text_color, self.back_color)
        else:
            the_text = menufont.render(self.title, True, self.text_color, self.back_color)
        graphics_window.blit(the_text, self.rect)

        # if this is the only thing you're drawing, then update the display
        if alone: pygame.display.update()

#  2) make separate functions for returning and changing their values
def get_boolean_parameter_value(menu_name):
    # takes a string describing a boolean parameter and returns the value of that parameter

    #  4) view or modify them using fucking look-up tables (long if, elif statements)
    return_val = False
    if menu_name == 'Save Group Hebbs': return_val = dataTypes.save_group_hebbs
    elif menu_name == 'Save Prop Hebbs': return_val = dataTypes.save_prop_hebbs
    elif menu_name == 'Save SP Hebbs': return_val = dataTypes.save_sp_hebbs
    elif menu_name == 'Save OP Hebbs': return_val = dataTypes.save_op_hebbs
    elif menu_name == 'Show LTM': return_val = dataTypes.graphic_show_LTM
    elif menu_name == 'Pretty Graphics': return_val = dataTypes.pretty_format
    elif menu_name == 'Unlimited WM' : return_val = dataTypes.god_like_wm
    elif menu_name == 'Settle ASAP' : return_val = dataTypes.bail_upon_settling
    elif menu_name == 'H&G Map. Alg.' : return_val = dataTypes.vers142_map_alg
    elif menu_name == 'Halt on Anomaly' : return_val = dataTypes.halt_on_anomaly

    return return_val

#  2) make separate functions for returning and changing their values
def toggle_boolean_parameter(menu_name):
    # takes a string describing a boolean parameter and toggles the value of that parameter

    #  4) view or modify them using fucking look-up tables (long if, elif statements)
    if menu_name == 'Save Group Hebbs': dataTypes.save_group_hebbs = not dataTypes.save_group_hebbs
    elif menu_name == 'Save Prop Hebbs': dataTypes.save_prop_hebbs = not dataTypes.save_prop_hebbs
    elif menu_name == 'Save SP Hebbs': dataTypes.save_sp_hebbs = not dataTypes.save_sp_hebbs
    elif menu_name == 'Save OP Hebbs': dataTypes.save_op_hebbs = not dataTypes.save_op_hebbs
    elif menu_name == 'Show LTM': dataTypes.graphic_show_LTM = not dataTypes.graphic_show_LTM
    elif menu_name == 'Pretty Graphics': dataTypes.pretty_format = not dataTypes.pretty_format
    elif menu_name == 'Unlimited WM' : dataTypes.god_like_wm = not dataTypes.god_like_wm
    elif menu_name == 'Settle ASAP' : dataTypes.bail_upon_settling = not dataTypes.bail_upon_settling
    elif menu_name == 'H&G Map. Alg.' : dataTypes.vers142_map_alg = not dataTypes.vers142_map_alg
    elif menu_name == 'Halt on Anomaly' : dataTypes.halt_on_anomaly = not dataTypes.halt_on_anomaly

class BooleanParameterMenuItem(MenuItem):
    # a menu item that displays and allows you to change the value of a boolean parameter
    def __init__(self, x, y, title, parent, hot_key=None):
        # hot key is the keyboard key that activated the menu item (whether it's visible or not)
        # variable_name is the literal name of the variable inside dataTypes.py that stores the value of the parameter
        self.rect = [x, y, menu_width, menu_height]
        self.parent = parent # parent is the menu that owns the item
        self.return_val = (self.parent.title,title)  # return val is the text the menu item returns when chosen
        self.name = title
        if hot_key:
            self.title = title+' ('+hot_key+')'
        else: self.title = title
        self.back_color = WHITE
        self.boarder_color = WHITE
        self.visible = False  # if and only if visible can it be clicked; false by default
        self.hot_key = hot_key

    def draw(self, alone = False): # if alone, then update display after draw; otherwise wait
        # first figure out whether to say the value is True or False and what color (Green or Red) to show the text
        if get_boolean_parameter_value(self.name) == True:
            truth_text = ' is True'
            text_color = GREEN
        else:
            truth_text = ' is False'
            text_color = RED
            
        pygame.draw.rect(graphics_window, self.back_color, self.rect, 0)
        the_text = menufont.render(self.title+truth_text, True, text_color, self.back_color)
        graphics_window.blit(the_text, self.rect)

        # if this is the only thing you're drawing, then update the display
        if alone: pygame.display.update()

    def toggle(self):
        # toggles the value of its variable
        toggle_boolean_parameter(self.name)

# Once again, declare the floating point parameters to be global

def get_int_parameter_value(parameter_name):
    if   parameter_name == 'Screen Width': return_val = str(dataTypes.screen_width)
    elif parameter_name == 'Screen Height': return_val = str(dataTypes.screen_height)

    return return_val

def change_int_parameter_value(parameter_name, new_val):
    if   parameter_name == 'Screen Width': dataTypes.screen_width = new_val
    elif parameter_name == 'Screen Height': dataTypes.screen_height = new_val

class IntParameterMenuItem(MenuItem): 
    # a menu item that displays and allows you to change the value of an integer parameter
    def __init__(self, x, y, title, parent):
        # hot key is the keyboard key that activated the menu item (whether it's visible or not)
        # variable_name is the literal name of the variable inside dataTypes.py that stores the value of the parameter
        self.rect = [x, y, menu_width, menu_height]
        self.parent = parent # parent is the menu that owns the item
        self.return_val = (self.parent.title,title)  # return val is the text the menu item returns when chosen
        self.title = title
        self.back_color = WHITE
        self.visible = False  # if and only if visible can it be clicked; false by default

    def draw(self): # if alone, then update display after draw; otherwise wait
        # first figure out whether to say the value is True or False and what color (Green or Red) to show the text
        value_text = get_int_parameter_value(self.title)
            
        pygame.draw.rect(graphics_window, self.back_color, self.rect, 0)
        the_text = menufont.render(''.join([self.title,' = ',value_text]), True, DARKBLUE, self.back_color)
        graphics_window.blit(the_text, self.rect)

    def get_new_value(self):
        # make a place for the user to write, get the new parameter value from the user,
        #   change the parameter value to the new value, erase the place where the user wrote

        # 1) Make the place to enter the new value
        # text_rect = [self.rect[0] + self.rect[2],self.rect[1],self.rect[2], self.rect[3]] # an identical rect immediately to the right
        pygame.draw.rect(graphics_window, YELLOW, self.rect)
        the_text = menufont.render('>',True,BLUE,YELLOW)
        graphics_window.blit(the_text, self.rect)
        pygame.display.update()

        # 2) get the new parameter value
        new_value = int(read_string(self.rect[0]+50, self.rect[1], self.rect[2], self.rect[3]))
        #new_value = float(read_string(text.rect[0]+50, text.rect[1], text.rect[2], text.rect[3]))

        # 3) change the parametre's value
        change_int_parameter_value(self.title,new_value)

        # 4) erase the rect where new value entered
        pygame.draw.rect(graphics_window, BLACK,self.rect)

def get_float_parameter_value(parameter_name):
    # takes the variable name of a float-valued parameter and returns a string describing its current value

    return_val = 'None'

    if   parameter_name == 'Sem. Noise': return_val = '%.3f' % dataTypes.semantic_noise
    elif parameter_name == 'Sem. Death': return_val = '%.3f' % dataTypes.semantic_death
    elif parameter_name == 'Attention': return_val = '%.3f' % dataTypes.attention
    elif parameter_name == 'Driver Inhib.': return_val = '%.3f' % dataTypes.driver_inhibition
    elif parameter_name == 'Rcip. Inhib.': return_val = '%.3f' % dataTypes.recip_inhibition
    elif parameter_name == 'Map Conn L.R.': return_val = '%.3f' % dataTypes.hebb_learning_rate
    elif parameter_name == 'Within Grp. Sup.': return_val = '%.3f' % dataTypes.within_group_support
    elif parameter_name == 'SSL Thresh.': return_val = '%.3f' % dataTypes.ssl_threshold
    elif parameter_name == 'Min Vert to Save': return_val = '%.3f' % dataTypes.min_vertical_wt
    # dangerous run parameters
    elif parameter_name == 'Pr-Pr Inhib': return_val = '%.3f' % dataTypes.prop_to_prop_inhib
    elif parameter_name == 'SP-SP Inbib': return_val = '%.3f' % dataTypes.sp_to_sp_inhib
    elif parameter_name == 'OP-OP Inhib': return_val = '%.3f' % dataTypes.op_to_op_inhib
    elif parameter_name == 'OutPr Pr-SP': return_val = '%.3f' % dataTypes.out_prop_prop_to_sp
    elif parameter_name == 'OutPr SP-Pred': return_val = '%.3f' % dataTypes.out_prop_sp_to_pred
    elif parameter_name == 'OutPr SP-Obj': return_val = '%.3f' % dataTypes.out_prop_sp_to_obj
    elif parameter_name == 'Pred-SP': return_val = '%.3f' % dataTypes.pred_to_sp
    elif parameter_name == 'Obj-SP': return_val = '%.3f' % dataTypes.obj_to_sp
    elif parameter_name == 'Sem-Pred': return_val = '%.3f' % dataTypes.sem_to_pred
    elif parameter_name == 'Sem-Obj': return_val = '%.3f' % dataTypes.sem_to_obj
    elif parameter_name == 'Weber K': return_val = '%.3f' % dataTypes.weber_constant
    elif parameter_name == 'Hebb Bias': return_val = '%.3f' % dataTypes.hebb_bias
    elif parameter_name == 'Retr. Thresh.': return_val = '%.3f' % dataTypes.retrieval_threshold
    elif parameter_name == 'It. per SP': return_val = '%.3f' % dataTypes.iterations_per_sp
    elif parameter_name == 'Phase Dur.': return_val = '%.3f' % dataTypes.phase_duration
    elif parameter_name == 'Inh-Exc.': return_val = '%.3f' % dataTypes.inhibitor_to_excitor
    elif parameter_name == 'Inh-Yoked': return_val = '%.3f' % dataTypes.inhibitor_to_yoked
    elif parameter_name == 'Min STI': return_val = '%.3f' % dataTypes.min_sti
    elif parameter_name == 'Max STI': return_val = '%.3f' % dataTypes.max_sti
    elif parameter_name == 'd STI dt': return_val = '%.3f' % dataTypes.dsti_dt
    elif parameter_name == 'Inh. Thresh.': return_val = '%.3f' % dataTypes.inhibitor_threshold
    elif parameter_name == 'Slow Inh. Gro.': return_val = '%.3f' % dataTypes.slow_inh_growth
    elif parameter_name == 'Fast Inh. Gro.': return_val = '%.3f' % dataTypes.fast_inh_growth
    elif parameter_name == 'Slow Inh. Dec.': return_val = '%.3f' % dataTypes.slow_inh_decay
    elif parameter_name == 'Fast Inh. Dec.': return_val = '%.3f' % dataTypes.fast_inh_decay
    elif parameter_name == 'Max Pr Read.': return_val = '%.3f' % dataTypes.max_prop_readiness
    elif parameter_name == 'd Read. dt': return_val = '%.3f' % dataTypes.d_readiness_dt
    elif parameter_name == 'SP Focus': return_val = '%.3f' % dataTypes.SP_focus
    elif parameter_name == 'Pr Focus': return_val = '%.3f' % dataTypes.prop_focus

    return return_val


def change_float_parameter_value(parameter_name, new_val):
    # takes the variable name of a float-valued parameter and assigns it new_value
    if   parameter_name == 'Sem. Noise': dataTypes.semantic_noise = new_val
    elif parameter_name == 'Sem. Death': dataTypes.semantic_death = new_val
    elif parameter_name == 'Attention': dataTypes.attention = new_val
    elif parameter_name == 'Driver Inhib.': dataTypes.driver_inhibition = new_val
    elif parameter_name == 'Rcip. Inhib.': dataTypes.recip_inhibition = new_val
    elif parameter_name == 'Map Conn L.R.': dataTypes.hebb_learning_rate = new_val
    elif parameter_name == 'Within Grp. Sup.': dataTypes.within_group_support = new_val
    elif parameter_name == 'SSL Thresh.': dataTypes.ssl_threshold = new_val
    elif parameter_name == 'Min Vert to Save': dataTypes.min_vertical_wt = new_val
    elif parameter_name == 'Min Vert to Save': dataTypes.min_vertical_wt = new_val
    # dangerous run parameters
    elif parameter_name == 'Pr-Pr Inhib': dataTypes.prop_to_prop_inhib = new_val
    elif parameter_name == 'SP-SP Inbib': dataTypes.sp_to_sp_inhib = new_val
    elif parameter_name == 'OP-OP Inhib': dataTypes.op_to_op_inhib = new_val
    elif parameter_name == 'OutPr Pr-SP': dataTypes.out_prop_prop_to_sp = new_val
    elif parameter_name == 'OutPr SP-Pred': dataTypes.out_prop_sp_to_pred = new_val
    elif parameter_name == 'OutPr SP-Obj': dataTypes.out_prop_sp_to_obj = new_val
    elif parameter_name == 'Pred-SP': dataTypes.pred_to_sp = new_val
    elif parameter_name == 'Obj-SP': dataTypes.obj_to_sp = new_val
    elif parameter_name == 'Sem-Pred': dataTypes.sem_to_pred = new_val
    elif parameter_name == 'Sem-Obj': dataTypes.sem_to_obj = new_val
    elif parameter_name == 'Weber K': dataTypes.weber_constant = new_val
    elif parameter_name == 'Hebb Bias': dataTypes.hebb_bias = new_val
    elif parameter_name == 'Retr. Thresh.': dataTypes.retrieval_threshold = new_val
    elif parameter_name == 'It. per SP': dataTypes.iterations_per_sp = new_val
    elif parameter_name == 'Phase Dur.': dataTypes.phase_duration = new_val
    elif parameter_name == 'Inh-Exc.': dataTypes.inhibitor_to_excitor = new_val
    elif parameter_name == 'Inh-Yoked': dataTypes.inhibitor_to_yoked = new_val
    elif parameter_name == 'Min STI': dataTypes.min_sti = new_val
    elif parameter_name == 'Max STI': dataTypes.max_sti = new_val
    elif parameter_name == 'd STI dt': dataTypes.dsti_dt = new_val
    elif parameter_name == 'Inh. Thresh.': dataTypes.inhibitor_threshold = new_val
    elif parameter_name == 'Slow Inh. Gro.': dataTypes.slow_inh_growth = new_val
    elif parameter_name == 'Fast Inh. Gro.': dataTypes.fast_inh_growth = new_val
    elif parameter_name == 'Slow Inh. Dec.': dataTypes.slow_inh_decay = new_val
    elif parameter_name == 'Fast Inh. Dec.': dataTypes.fast_inh_decay = new_val
    elif parameter_name == 'Max Pr Read.': dataTypes.max_prop_readiness = new_val
    elif parameter_name == 'd Read. dt': dataTypes.d_readiness_dt = new_val
    elif parameter_name == 'SP Focus': dataTypes.SP_focus = new_val
    elif parameter_name == 'Pr Focus': dataTypes.prop_focus = new_val


class FloatParameterMenuItem(MenuItem): 
    # a menu item that displays and allows you to change the value of a floating point parameter
    def __init__(self, x, y, title, parent):
        # hot key is the keyboard key that activated the menu item (whether it's visible or not)
        # variable_name is the literal name of the variable inside dataTypes.py that stores the value of the parameter
        self.rect = [x, y, menu_width, menu_height]
        self.parent = parent # parent is the menu that owns the item
        self.return_val = (self.parent.title,title)  # return val is the text the menu item returns when chosen
        self.title = title
        self.back_color = WHITE
        self.visible = False  # if and only if visible can it be clicked; false by default

    def draw(self, alone = False): # if alone, then update display after draw; otherwise wait
        # first figure out whether to say the value is True or False and what color (Green or Red) to show the text
        value_text = get_float_parameter_value(self.title)
            
        pygame.draw.rect(graphics_window, self.back_color, self.rect, 0)
        the_text = menufont.render(''.join([self.title,' = ',value_text]), True, DARKBLUE, self.back_color)
        graphics_window.blit(the_text, self.rect)

        # if this is the only thing you're drawing, then update the display
        if alone: pygame.display.update()

    def get_new_value(self):
        # make a place for the user to write, get the new parameter value from the user,
        #   change the parameter value to the new value, erase the place where the user wrote

        # 1) Make the place to enter the new value
        # text_rect = [self.rect[0] + self.rect[2],self.rect[1],self.rect[2], self.rect[3]] # an identical rect immediately to the right
        pygame.draw.rect(graphics_window, YELLOW, self.rect)
        the_text = menufont.render('>',True,BLUE,YELLOW)
        graphics_window.blit(the_text, self.rect)
        pygame.display.update()

        # 2) get the new parameter value
        new_value = float(read_string(self.rect[0]+50, self.rect[1], self.rect[2], self.rect[3]))
        #new_value = float(read_string(text.rect[0]+50, text.rect[1], text.rect[2], text.rect[3]))

        # 3) change the parametre's value
        change_float_parameter_value(self.title,new_value)

        # 4) erase the rect where new value entered
        pygame.draw.rect(graphics_window, BLACK,self.rect)
           

class Menu(MenuRect):
    # this is an unmutable message rectangle that contains a list of menu items
    def __init__(self, x, y, title, parent=None):
        self.rect = [x, y, menu_width, menu_height]
        self.title = title
        self.back_color = WHITE
        self.boarder_color = WHITE
        self.visible = True  # if and only if visible can it be clicked (for use w/ menus)
        self.menu_items = [] # these are hte various menu items inside this menu, e.g., Open and Save for File
        self.sub_menus = []
        self.active = False
        self.text_color = BLACK
        self.parent = parent  # in the case of a sub-menu, the parent is the upper menu
        
    def add_menu_item(self, name, hot_key=None, extra_text=''):
        # make the new item...
        # 1) get its rec parameters based on own parameters and own existing menu items
        left = self.rect[0]
        try: # locate it based on the last existing menu item, if there is one...
            top = self.menu_items[-1].rect[1] + self.menu_items[-1].rect[3]
        except: # otherwise, locate it just below the menu title
            top = self.rect[1] + self.rect[3]
        # create the new menu item
        new_item = MenuItem(left, top, name, self, hot_key, extra_text)
        # and append it to your list
        self.menu_items.append(new_item)

    def add_boolean_menu_item(self, name, hot_key=None):
        # make the new Boolean Parameter item...
        # 1) get its rec parameters based on own parameters and own existing menu items
        left = self.rect[0]
        try: # locate it based on the last existing menu item, if there is one...
            top = self.menu_items[-1].rect[1] + self.menu_items[-1].rect[3]
        except: # otherwise, locate it just below the menu title
            top = self.rect[1] + self.rect[3]
        # create the new menu item
        new_item = BooleanParameterMenuItem(left, top, name, self)
        # and append it to your list
        self.menu_items.append(new_item)

    def add_int_menu_item(self, name):
        # make a new integer parameter menu item
        # 1) get its rec parameters based on own parameters and own existing menu items
        left = self.rect[0]
        try: # locate it based on the last existing menu item, if there is one...
            top = self.menu_items[-1].rect[1] + self.menu_items[-1].rect[3]
        except: # otherwise, locate it just below the menu title
            top = self.rect[1] + self.rect[3]
        # create the new menu item
        new_item = IntParameterMenuItem(left, top, name, self)
        # and append it to your list
        self.menu_items.append(new_item)

    def add_float_menu_item(self, name):
        # make a new floating point parameter menu item
        # 1) get its rec parameters based on own parameters and own existing menu items
        left = self.rect[0]
        try: # locate it based on the last existing menu item, if there is one...
            top = self.menu_items[-1].rect[1] + self.menu_items[-1].rect[3]
        except: # otherwise, locate it just below the menu title
            top = self.rect[1] + self.rect[3]
        # create the new menu item
        new_item = FloatParameterMenuItem(left, top, name, self)
        # and append it to your list
        self.menu_items.append(new_item)

    def add_sub_menu(self, name):
        # allows you to add a whole menu to a menu to have hierarchical menus
        # 1) get its rec parameters based on own parameters and own existing menu items
        left = self.rect[0]
        try: # locate it based on the last existing menu item, if there is one...
            top = self.sub_menus[-1].rect[1] + self.sub_menus[-1].rect[3]
        except: # otherwise, locate it just below the menu title
            top = self.rect[1] + self.rect[3]
        # create the new menu item
        new_sub_menu = Menu(left, top, name, self)
        # declare it not visible by default
        new_sub_menu.visible = False
        # and append it to your list
        self.sub_menus.append(new_sub_menu)

    def activate(self):
        # activates the menu:
        # displays the menus and sub_menus and declares them visible
        # display menu items first...
        self.active = True
        for item in self.menu_items:
            item.draw()
            item.visible = True
        # ... followed by sub-menus
        for item in self.sub_menus:
            item.draw()
            item.visible = True
            item.active = True
            
    def deactivate(self):
        # deactivates the menu:
        # hides the menus and sub_menus and declares them invisible
        self.active = False
        for item in self.menu_items:
            item.erase()
            item.visible = False
        # ... followed by sub-menus
        for item in self.sub_menus:
            item.erase()
            item.visible = False
            item.deactivate()
        # and any parent menu
        if self.parent:
            self.parent.deactivate()

def about_LISA():
    # activated by the LISA, About menu option: tells about version info, etc.
    # returns a list of strings to be loaded into the status window
    messages = []
    messages.append('')
    messages.append('---------------------------------------')
    messages.append(''.join(['LISA/DORA Vers. ',dataTypes.version_id]))
    messages.append('')
    messages.append('Complete LISA code augmented')
    messages.append(' with routines from DORA for the')
    messages.append(' purpose of generatng explanations.')
    messages.append('')
    messages.append(''.join(['Last modified ',dataTypes.last_modified]))
    messages.append('---------------------------------------')
    messages.append('')
    return messages

def make_menu_bar():
    # makes the LISA menu bar
    # includes menus: LISA  File  Parameters  Run
    #
    menus = []
    # locations of menus
    left = 1
    top = 1
    #
    # 1) The LISA menu
    menus.append(Menu(left, top, 'LISA'))
    # 1.1) add the menu items to it
    menus[-1].add_menu_item('About')
    menus[-1].add_menu_item('Quit','Q')
    # 1.3) increment menu left position
    left += menu_width
    
    # 2) The File menu
    menus.append(Menu(left, top, 'File'))
    # 2.1) add the menu items to it
    menus[-1].add_menu_item('Go','G',': '+dataTypes.go_path+dataTypes.go_file_name)
    menus[-1].add_menu_item('Path','P','*path*')
    menus[-1].add_menu_item('Open','O')
    menus[-1].add_menu_item('Empty Memory','E')
    menus[-1].add_menu_item('View Network','V')
    menus[-1].add_menu_item('Save Status Window')
    # 2.3) increment menu left position
    left += menu_width
    
    # 3) The Run menu
    menus.append(Menu(left, top, 'Run'))
    # 3.1) add the menu items to it
    menus[-1].add_menu_item('Graphic')
    menus[-1].add_menu_item('Blind','B')
    menus[-1].add_menu_item('Batch')
    # 3.3) increment menu left position
    left += menu_width

    # 4) The Save options menu
    menus.append(Menu(left, top, 'Save Options'))
    # 4.1) add the menu items to it
    menus[-1].add_boolean_menu_item('Save Group Hebbs')
    menus[-1].add_boolean_menu_item('Save Prop Hebbs')
    menus[-1].add_boolean_menu_item('Save SP Hebbs')
    menus[-1].add_boolean_menu_item('Save OP Hebbs')
    menus[-1].add_float_menu_item('Min Vert to Save')
    # 4.3) increment menu left position
    left += menu_width

    # 5) The Run parameters menu
    menus.append(Menu(left, top, 'Run Parameters'))
    # 5.1) add the menu items to it
    menus[-1].add_boolean_menu_item('Unlimited WM')
    menus[-1].add_boolean_menu_item('Settle ASAP')
    menus[-1].add_boolean_menu_item('H&G Map. Alg.')
    menus[-1].add_boolean_menu_item('Halt on Anomaly')
    menus[-1].add_float_menu_item('Sem. Noise')
    menus[-1].add_float_menu_item('Sem. Death')
    menus[-1].add_float_menu_item('Attention')
    menus[-1].add_float_menu_item('Driver Inhib.')
    menus[-1].add_float_menu_item('Rcip. Inhib.')
    menus[-1].add_float_menu_item('Map Conn L.R.')
    menus[-1].add_float_menu_item('Within Grp. Sup.')
    menus[-1].add_float_menu_item('SSL Thresh.')
    # 5.3) increment menu left position
    left += menu_width

    # 6) The Guts (dangerous parameters) menu
    menus.append(Menu(left, top, 'The Guts (Dangerous!)'))
    # 5.1) add the menu items to it
    menus[-1].add_float_menu_item('Pr-Pr Inhib') 
    menus[-1].add_float_menu_item('SP-SP Inbib') 
    menus[-1].add_float_menu_item('OP-OP Inhib') 
    menus[-1].add_float_menu_item('OutPr Pr-SP') 
    menus[-1].add_float_menu_item('OutPr SP-Pred') 
    menus[-1].add_float_menu_item('OutPr SP-Obj') 
    menus[-1].add_float_menu_item('Pred-SP') 
    menus[-1].add_float_menu_item('Obj-SP') 
    menus[-1].add_float_menu_item('Sem-Pred') 
    menus[-1].add_float_menu_item('Sem-Obj') 
    menus[-1].add_float_menu_item('Weber K') 
    menus[-1].add_float_menu_item('Hebb Bias') 
    menus[-1].add_float_menu_item('Retr. Thresh.') 
    menus[-1].add_float_menu_item('It. per SP') 
    menus[-1].add_float_menu_item('Phase Dur.') 
    menus[-1].add_float_menu_item('Inh-Exc.') 
    menus[-1].add_float_menu_item('Inh-Yoked') 
    menus[-1].add_float_menu_item('Min STI') 
    menus[-1].add_float_menu_item('Max STI') 
    menus[-1].add_float_menu_item('d STI dt') 
    menus[-1].add_float_menu_item('Inh. Thresh.') 
    menus[-1].add_float_menu_item('Slow Inh. Gro.') 
    menus[-1].add_float_menu_item('Fast Inh. Gro.') 
    menus[-1].add_float_menu_item('Slow Inh. Dec.') 
    menus[-1].add_float_menu_item('Fast Inh. Dec.') 
    menus[-1].add_float_menu_item('Max Pr Read.') 
    menus[-1].add_float_menu_item('d Read. dt') 
    menus[-1].add_float_menu_item('SP Focus') 
    menus[-1].add_float_menu_item('Pr Focus') 
    # 6.3) increment menu left position
    left += menu_width
    
    # 7) The Display menu
    menus.append(Menu(left, top, 'Display'))
    # 7.1) add the menu items to it
    menus[-1].add_boolean_menu_item('Show LTM','L')
    menus[-1].add_boolean_menu_item('Pretty Graphics')
    menus[-1].add_int_menu_item('Screen Width')
    menus[-1].add_int_menu_item('Screen Height')
    # 7.3) increment menu left position
    left += menu_width

    return menus

def get_path():
    # activated upon menu option File, Path
    pygame.draw.rect(graphics_window, WHITE, (100, 100, 300, 100))
    text_rect = (100, 100, 300, 50)
    the_text = menufont.render('Enter path (Data/ is assumed):', True, DARKBLUE, WHITE)
    graphics_window.blit(the_text, text_rect)
    pygame.display.update()
    dataTypes.file_path = read_string(100, 150, 300, 50)
    # now erase the rect
    pygame.draw.rect(graphics_window, BLACK, (100, 100, 300, 100))
    pygame.display.update()

def get_file_name():
    # activated upon menu option File, Open
    # reads the file name and then leaves it to LISA to call build on said name
    pygame.draw.rect(graphics_window, WHITE, (100, 100, 300, 100))
    text_rect = (100, 100, 300, 50)
    the_text = menufont.render('Enter file name (omit suffix):', True, DARKBLUE, WHITE)
    graphics_window.blit(the_text, text_rect)
    pygame.display.update()
    dataTypes.file_name = read_string(100, 150, 300, 50)
    # now erase the rect
    pygame.draw.rect(graphics_window, BLACK, (100, 100, 300, 100))
    pygame.display.update()
    

def process_events(menus, status_window):
    # top-level function that checks to see what the user wants
    #
    menu_option = ('','')
    
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
                    menu_option = ('LISA','Quit')
                # if not quit, get key code
                elif event.key < 256:
                    key = key_to_letter(event.key, event.mod)
                    if key in ['q','Q']: menu_option = ('LISA','Quit')
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
                if   key in ['q','Q']: menu_option = ('LISA','Quit')
                elif key in ['p','P']: menu_option = ('File','Path')
                elif key in ['o','O']: menu_option = ('File','Open')
                elif key in ['e','E']: menu_option = ('File','Empty Memory')
                elif key in ['v','V']: menu_option = ('File','View Network')
                elif key in ['g','G']: menu_option = ('File','Go')
                elif key in ['b','B']: menu_option = ('Run','Blind')
                elif key in ['s','S']: menu_option = ('Display','Start or Stop')
                elif key in ['l','L']: menu_option = ('Display','Show LTM')
                elif key == '=': menu_option = ('Display','Faster')
                elif key == '-': menu_option = ('Display','Slower')
                
            # * * * key up * * *
            elif event.type == KEYUP:
                pass # INCOMPLETE: HANDLE KEY UP EVENTS!

            # Mouse down: This'll be much of the menu shit
            elif event.type == MOUSEBUTTONDOWN:
                # check to see what, if any, menu the user clicked on
                for menu in menus: # look at all the menus...
                    if menu.clicked(event.pos):
                        # ... then activate or deactivate the menu
                        if menu.active: menu.deactivate()
                        else: menu.activate()
                # check to see whether user clicked on status window
                if status_window.top_bar_clicked(event.pos):
                    status_window.top_bar_selected = True
                if status_window.corner_clicked(event.pos):
                    status_window.corner_selected = True

            # Mouse up: This'll be more of the menu shit
            elif event.type == MOUSEBUTTONUP:
                # first take as a command the menu item corresponding to the position of the mouse
                # and deactivate all menus and declare them not visible
                for menu in menus:
                    for item in menu.menu_items: # and all the items in each menu...
                        if item.clicked(event.pos): # if this menu was clicked on...
                            menu_option = item.return_val # return the menu item's menu name and item name
                            menu.deactivate() # deactivate the menu and declare it not visible
                            if type(item) == BooleanParameterMenuItem:
                                item.toggle()
                            elif type(item) == FloatParameterMenuItem:
                                item.get_new_value()
                            elif type(item) == IntParameterMenuItem:
                                item.get_new_value()
                                # render the new screen
                                dataTypes.graphics_window = dataTypes.setup_screen(dataTypes.screen_width, dataTypes.screen_height)
                                # re-draw the white bar at the top of the screen
                                pygame.draw.rect(graphics_window,WHITE,(0,0,dataTypes.screen_width,menu_height+1))
                                # relocate the status window
                                status_window.set_location(dataTypes.screen_width - (status_window.rect[2]+1), dataTypes.screen_height -(status_window.rect[3]+1))
                                # and re-draw the windows
                                for window in windows:
                                    window.draw()

                                
                # deselect the status window
                status_window.top_bar_selected = False
                status_window.corner_selected  = False

            # move or resize status window if necessary
            if event.type == MOUSEMOTION:
                if status_window.top_bar_selected:
                    status_window.move(event.rel)
                if status_window.corner_selected:
                    status_window.resize(event.rel)
                

    # pygame.event.clear()  may wanna put this back in...

    return menu_option
    

# now instantiate one MessageRect to serve as the feedback window into which stuff is printed
#   instead of printing to the python shell (which is slow, slow, slow)

status_window = MutableMessageRect(screen_width - 302, screen_height - 402, 300, 400, 'Status')

# now make a global list of all windows and put the feedback_window into it
windows = []
windows.append(status_window)

# make the menu bar
menus = make_menu_bar()
windows.extend(menus) # add the menus to the list of windows


### * * * * * * * * * * * code testing.  Delete me... or make me the main body of LISA  * * * * * * * * * *
##
##all_done = False
##
##while not all_done:
##    # draw a gray bar at the top of the screen
##    pygame.draw.rect(graphics_window,WHITE,(0,0,screen_width,menu_height+1))
##    # draw the windows
##    for window in windows:
##        window.draw()
##    pygame.display.update()
##    # get user input
##    menu_option = process_events(menus, status_window)
##
##    # DIAG
##    # print menu_option to the status window
##    if menu_option != '':
##        status_window.add_message(''.join(['(',menu_option[0],',',menu_option[1],')']))
##    # end DIAG
##    
##    if   menu_option == ('LISA','Quit'): all_done = True
##    elif menu_option == ('LISA','About'):
##        about_text = about_LISA()
##        status_window.add_messages(about_text)
##    elif menu_option == ('File','Save Status Window'):
##        status_window.save_to_file()
##    elif menu_option == ('File','Path'):
##        get_path()
##    elif menu_option == ('File','Open'):
##        get_file_name()
##        # and then leave it to LISA to call Build to construct the simulation
##
### close the screen
##pygame.display.quit()

# * * * * * * * * * end of code testing, delete me.  * * * * * * * * *

