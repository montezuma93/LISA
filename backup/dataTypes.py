# dataTypes.py
#
# Vers Ex 1.15, 10/10/09: Building LISA a GUI

last_modified = '10/10/09'
version_id    = 'Ex 1.15'


# * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
# * * * * * * * * * * * * * * * graphics stuff  * * * * * * * * * * * * * * *
# * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

import pygame, sys, os, random
from pygame.locals import *
import copy # to all you to do the copy.copy() function
random.seed(os.urandom(99))

# unit sizes (in pixels)
unit_width  = 90         
unit_height = 30 # 40
text_height = 16

# Initialize pygame
pygame.font.init()
symfont = pygame.font.SysFont('times', text_height)
# clock = pygame.time.Clock()

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

# Initialize pygame screen
def_scr_width = 1500 # default screen width
def_scr_height = 1000 # default screen height
screen_width = def_scr_width # 1280 at school; 1200 on laptop
screen_height = def_scr_height # 1024 at school;  750 on laptop

# LISA graphics formatting options
pretty_format = True # pretty format puts props centered above SPs and groups centered over props

# * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
# * * * * * * * * * * * * * * * end of graphics stuff (except for a bit below) * * * * * * * * * * * * * * *
# * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

# gamma = 0.5 # activation function growth rate # set these separately for driver, recip & dormant
# delta = 0.3 # activation function decay rate
tau   = 0.2 # 0.5 activation function time constant
            # default for finite WM capacity; for unlimited WM, we use 0.2

# init the master hebb variables here so they cab be used in HebbSet.add_hebb()
hebb_unit = []

# init global parameters
#    file-saving parameters
save_group_hebbs = True
save_prop_hebbs  = True
save_sp_hebbs    = True
save_op_hebbs    = True
min_vertical_wt  = 0.1
diagnostics      = False # diagnostics during file reading

#    sym and output files
go_use_graphics = True
go_path  =  'st.john/' # 'minister/' #'inductions/typicality3/' # typicality2/' # 'inductions/diversity2/' # 'semantic-2/' # 
go_file_name =  '4b' # 'hard4' #'RobinsHaveEnzyme' # 'birdlung' # 'SimilarSchema' # 'test1' # 

data_directory   = 'DATA/'
file_path        = ''    # directory path, within Data/, for .sym and .run files
file_name        = ''
sym_file_name    = ''
out_file_name    = ''
sym_file         = [] # now a LIST of files (3/7/08) None
out_file         = None
out_file_open    = False
file_in_memory   = False
save_sym         = []   # 10/09/07: a list of analogs to save as .SYM files


# * * * * * One TINY little bit more of graphics stuff * * * * * * * * * * * * *
def setup_screen(screen_width, screen_height):
    screen = pygame.display.set_mode((screen_width, screen_height))#,FULLSCREEN)
    caption = 'LISA/DORA: '+file_path+file_name
    pygame.display.set_caption(caption)
    return screen

# make the graphics_window
graphics_window = setup_screen(screen_width, screen_height)
# 5/27/08: this function now called at end of read_file in build
# * * * * * * * * * * * * * * * end REAL of graphics stuff * * * * * * * * * * * * *


#    run parameters
god_like_wm        = False    # false by default during ths phase of code development
semantic_noise     = 0.0      # none by default
semantic_death     = 0.0      # none by default
attention          = 1.0      # full by default
driver_inhibition  = 1.0      # full by default
recip_inhibition   = 1.0      # full by default
hebb_learning_rate = 1.0      # full by default (used to be 0.9)
bail_upon_settling = False    # when true, LISA will quit updatng when recip settles
vers142_map_alg    = True     # when true, use the versioon 142 mapping algorithm; whan false, use H&H'97 and '03 (i.e., vers120)
within_group_support = 1.0    # the amount that propos with the same group support one another
ssl_threshold        = 0.7    # the proportion of an analog that must map to the driver to license ssl
halt_on_anomaly      = False  # terminate simulation when anomaly (e.g., contradiction) detected
operating_mode       = 'LISA' # 'LISA' or 'DORA'


#    dangerous run parameters
prop_to_prop_inhib    = -1.0  # -0.5 # -1.0
default_prop_to_prop_inhib = -1.0  # vers 1.04: user modifies default & lisa decides when to use it
sp_to_sp_inhib        = -1.0  # -0.5 # -1.0  # -2.0
default_sp_to_sp_inhib = -1.0 # vers 1.04: user modifies default & lisa decides when to use it
op_to_op_inhib        =  0.0  # by default, no inhib, but for some purposes useful
out_prop_prop_to_sp   = -1.0  # -0.5  # -1.0
default_out_prop_to_sp = -1.0
out_prop_sp_to_pred   = -1.0  # -0.5  # -1
default_out_sp_to_pred = -1.0
out_prop_sp_to_obj    = -1.0  # -0.5  # -1
default_out_sp_to_obj = -1.0
pred_to_sp            = 1.0   # 1.5
obj_to_sp             = 1.0   # 0.5
sem_to_pred           = 1.0   # 1.5
sem_to_obj            = 1.0   # 0.5
weber_constant        = 2.0   # 1.0 # for OP units
hebb_bias             = 3.0   # 5.0 # 2.0 # effect of hebbs relative to other sources of input
retrieval_threshold   = 0.4   # activation for recip unit to get retrieved into WM
iterations_per_sp     = 330   # 300 # 3 * phase_duration! this is the old LISA value
phase_duration        = 130 # 100 75    # this is how long a single sp in the phase set fires once (twill fire three times)
# dangerous SP parameters (these, unlike some others, taken from vers 142)
inhibitor_to_excitor  = -3.0    # sp inhibitor to own excitor
inhibitor_to_yoked    = -1.0    # sp inhibitor to sp's pred & argument
min_sti               = 1.0     # minimum sensitivity to inhibition
max_sti               = 3.0 #2.0     # maximum sensitivity to inhibition
dsti_dt               = -0.0015 # change in sti per iteration
inhibitor_threshold   = 0.5     # how active an SP must be to excite its inhibitor
slow_inh_growth       = 0.001   # 0.001: 100 iterations to go from 0 to lower threshold (0.1)
fast_inh_growth       = 1.0     # jump immediately to max inhibitor activation
slow_inh_decay        = 0.01    # 10 iterations to decay from 1.0 to upper thresh (0.9)
fast_inh_decay        = 1.0     # fall immediately from upper thresh to 0
# dangerous prop priority parameters
max_prop_readiness    = 1.0
d_readiness_dt        = 0.1  # how fast readiness recovers (from 0 to max)
# for vers 1.04: SP focus: focus on multiplicative vs. additive integ. of inputs
SP_focus              = 0.0  # value 0.0 is Old-style LISA
default_SP_focus      = 0.0
prop_focus            = 0.0
default_prop_focus    = 0.0

# for vers Ex 1.09: Display LTM in graphics
graphic_show_LTM      = True

class HebbUnit(object):  # this is the unit shared by the two hebb sets
    def __init__(self, owner1, owner2):
        self.weight = 0.0
        self.act = 0.0
        self.input = 0.0
        self.buffer = 0.0
        self.normalizer = 1.0
        self.owners = []
        # the owners field is so the HebbUnit will know whom it connects...
        #   this is more for the convenience of the programmer (and debugger)
        #   than out of strict necessity
        self.owners.append(owner1)
        self.owners.append(owner2)
        # the fields below are for the updating of hebb weights:
        # at the beginning of said process, go through all the hebbs Once and figure out
        # who is consistent and inconsistent with whom.  Then just iterate through these lists for
        # the purposes of updating hebb activations.
        # Then, at the end of the updatng process, init these fields back to blank (cause the population
        # of hebbs is wont to change phase set by phase set)
        self.consistent_hebbs = []
        self.inconsistent_hebbs = []

    def init_state(self): # init everything *except* the weight
        self.act = 0.0
        self.input = 0.0
        self.buffer = 0.0

class Hebb(object):
    def __init__(self, h_unit, recip):
        self.h_unit = h_unit  # this is a pointer to the (shared) HebbUnit
        self.recip = recip # this is a pointer to the unit on the receiving end of the hebb

class HebbSet(object):
    def __init__(self, my_owner):
        self.owner = my_owner
        target = None     # the analog to which this hebb set refers
        self.hebbs = [] 
        self.max_hebb = 0.0 # for hebb-based inhibition
        self.inhibitor = 0.0
        # OK, this one (self.inhibitor) needs some substantial explaining.  4/20/08. Vers Ex 1.09
        # For the new explanation algorithm ala vers Ex 1.08, we need a way to tell units in the
        #   explanandum that they already map to something, even if that something has been erased from the workspace.
        # To this end, we add the HebbSet.inhibitor: This will serve as a memory of the largest hebb connection
        #   a unit *used to* have to another analog (namely, the workspace)
        # It will serve to tell units in the explanandum when they ought to be inhibited by units in the
        #   workspace, even if they do not currently map to anything in the workspace, so that the workspace
        #   can drive analogical inference in the explanandum.
        # Merchanically, it works in the update_max_hebb() function below: For most hebb sets most of the time,
        #   HebbSet.inhibitor = 0.0.  But for mapped units in the explanandum, it is 1.0.
        #   It is the value to which Max_hebb is initialized (i.e., as a minimum) for computing max_hebb.
        #   When a uit is already mapped, inhibition is set to 1.0,effectively setting max_hebb to 1.0 and
        #   allowing the nit to be inhibited by stuff in the workspace to that self-supervised learning can proceed.

    def add_hebb(self, token_unit, h_unit):
        # adds a hebb to unit IFF that hebb does not already exist!
        # token_unit is the TokenUnit on the receiving end of this new hebb;
        # h_unit is the master HebbUnit (global hebb_unit) conneceted to this new hebb
        add_the_hebb = True  # will be set to false if the hebb already exists
        # check to see whether the hebb already exists in the list
        for hebb in self.hebbs:
            if hebb.recip == token_unit:  # i.e., if the hebb exists
                add_the_hebb = False
                break
        if add_the_hebb:
            if h_unit == None:
                # if there is no master hebb to add, then add to the master list and use
                # hebb_unit[-1], i.e., the last master hebb created
                hebb_unit.append(HebbUnit(self.owner, token_unit))
                # hebb_unit[-1] should now point to the newly created hebb_unit
                h_unit = hebb_unit[-1]
                # DIAG
                # print 'new master hebb:',h_unit.owners[0].name,'<-->',h_unit.owners[1].name
            # so, make the new hebb in this HebbSet
            self.hebbs.append(Hebb(h_unit, token_unit))
            # DIAG
            # print '    new hebb from',self.owner.name,'in',self.owner.analog.name,'to',self.hebbs[-1].recip.name,'in',self.hebbs[-1].recip.analog.name

        # if you created a new hebb, then return it's master hebb so that it can
        # be used as an argument (h_unit) in the construction
        # of the complementaty hebb (i.e., the one from token_unit
        # to self).  (It has already been added to the master list of hebbs.)
        # if you did not create a new hebb, then return None
        if add_the_hebb:  # i.e., if you created a new hebb
            return_val = self.hebbs[-1].h_unit
        else:
            return_val = None

        # now return the return val (either the new hebb or one)
        return return_val

    def update_max_hebb(self):
        self.max_hebb = self.inhibitor # inhibitor is for vers Ex 1.09, 4/20/08: for inhibiting structures already explained (see above)
        for hebb in self.hebbs:
            if hebb.h_unit.weight > self.max_hebb:
                self.max_hebb = hebb.h_unit.weight

    def release_from_inhibition(self):
        # see explain.py for the reasons for this function
        # called by release_from_hebb_based_inhibition()
        # basically, it takes away the inhbition (i.e., an imposed large max_hebb value)
        #   on the hebbs set to the target analog
        self.max_hebb = 0.0
        self.inhibitor = 0.0
        self.hebbs = []
        self.update_max_hebb()

    def has_hebbs(self):
        # boolean function: returns true if hebb set has hebbs, false otherwise
        if len(self.hebbs) > 0:
            result = True
        else:
            result = False
        return result

class Link(object):     # this is a connection between OP and semantic or suport link 'tween props
    def __init__(self, unit, weight):
        self.unit   = unit  # unit is the guy on the other end of the link
        self.weight = weight

# new vers ex 1.10: a basic unit class that contains name, location & color,
#                   i.e., all the basic stuff for drawing, etc.
# both token units and semantic units inherit from this basic class
class Unit(object):
    def __init__(self, my_name):
        self.name = my_name
        self.index = None
        
        # for graphics
        self.rect     = [0,0,0,0]  # the full rectangle occupied by the unit: [left, top, width, height]
        self.act_rect = [0,0,0,0]  # the rectangle filled by the activation bar
        
    def get_index(self, all_units):
        self.index = all_units.index(self)

    def set_location(self, pred_rect, stay_narrow=False):
        # pred_rect contains the coordinates of the predecessor to this unit
        # try to put yourself to the right of your predecessor.  If this puts you
        #  off the edge of the screen, then IF stay_narrow, then
        #  bump down row and go to the extreme left (x = 1)
        self.rect[0] = pred_rect[0] + unit_width + 1
        self.rect[1] = pred_rect[1]
        self.rect[2] = pred_rect[2]
        self.rect[3] = pred_rect[3]

        # only semantic units stay narrow so that it'll be easier to center
        #   P units over their SPs
        if stay_narrow:
            # if you're off the right edge, then bump down
            if (self.rect[0] + unit_width) > screen_width:
                # go to left...
                self.rect[0] = 1
                # go down
                self.rect[1] += unit_height + 1

        # now define the unit's activation rectangle in terms of its main rect
        self.act_rect[0] = self.rect[0] + 1   # start it one pixel to the right
        self.act_rect[1] = self.rect[1] + (text_height + 1) # start it 1 pixel below unit's name
        self.act_rect[2] = self.rect[2] - 2   # end it one pixel from the right
        self.act_rect[3] = self.rect[3] - (text_height + 2)   # end it one pixel from the bottom

        # return the value of, but not a poniter to, self.rect
        #   that's what the copy.copy() function does
        return copy.copy(self.rect)

    def draw_name(self, color):
        # at beginning of phase set, draws unit name
        #
        # 1) Erase old self
        graphics_window.fill(BLACK, self.rect)
        
        # 2) Draw own rect
        pygame.draw.rect(graphics_window, color, self.rect, 1)
        # draw.rect(window, color, rectangle info, width=0) if width = 0, rect will be filled

        # 3) Draw own name
        text_rect = [self.rect[0]+1, self.rect[1]+1, self.rect[2], self.rect[1] + text_height]
        # render the text (??)
        the_text  = symfont.render(self.name, True, color, BLACK)
        # and blit it to the screen
        graphics_window.blit(the_text, text_rect)

    def draw_act(self, act1, color1, retrieved=False, act2=None, color2=None):
        # done one every Nth iteration
        # all units have one act, to print in one color, and SPs have a second
        #   act (their sustained output) to print in another color
        #
        # 1) black-out old act
        #    now, black out the old act rect
        if retrieved:
            graphics_window.fill(GRAY, self.act_rect)
        else:
            graphics_window.fill(BLACK, self.act_rect)
        # 2) fill in the new one in proportion to the value of activation
        width = int(round(act1 * self.act_rect[2]))
        graphics_window.fill(color1, [self.act_rect[0],self.act_rect[1],width,self.act_rect[3]])
        # 3) if there is an act 2 (e.g., an SP output), then fill that in at the top half of act 1
        if act2:
            height = int(round(0.5 * self.act_rect[3]))
            width = int(round(act2 * self.act_rect[2]))
            graphics_window.fill(color2, [self.act_rect[0],self.act_rect[1],width,height])
                             

class TokenUnit(Unit):
    def __init__(self, my_name, my_analog):
        Unit.__init__(self, my_name)
        self.analog = my_analog
        self.hebb_set = []
        self.act = 0.0
        self.retrieved = False
        self.bu_input = 0.0
        self.td_input = 0.0
        self.lat_input = 0.0
        self.hebb_input = 0.0

        self.importance = 1.0   # default importance for all units is 1.0

        self.is_infant = False  # an infant token unit is newly inferred & still learning
        self.inferred  = False  # mark whether unit was inferred

    def init_input(self, refresh):
        self.bu_input = 0.0
        self.td_input = refresh
        self.lat_input = 0.0
        self.hebb_input = 0.0

    def init_state(self):  # init input, activation and retrieval status
        self.init_input(0.0) # NOTE: Assumes a refresh value of 0
        self.act = 0.0
        self.retrieved = False

    def update_activation(self, gamma, delta):
        net_input = self.bu_input + self.td_input + self.lat_input + self.hebb_input * hebb_bias
        delta_act = gamma * net_input * (1.0 - self.act) - delta * self.act
        old_act = self.act
        self.act = self.act + tau * delta_act
        if self.act > 1.0:
            self.act = 1.0
        if self.act < 0.0:
            self.act = 0.0
        real_delta_act = abs(self.act - old_act)

        settled = (real_delta_act < 0.01 * tau)

        return settled
        
    def create_hebb_sets(self):
        # creates this unit's hebb sets: one for each analog of which
        # it is not a member
        # I think this is not gonna work 'cause analog is defined Below
        for an_analog in analog:
            if an_analog.index != self.analog.index: # don't point to own analog
                self.hebb_set.append(HebbSet(self)) # create hebb set
                self.hebb_set[-1].target = an_analog # point to an_analog

    def has_hebbs(self, target_analog=None):
        # boolean function that returns True iff the unit has some hebbs to target analog
        # if target_analog = None, then function returns true if unit has hebbs to Any analog
        result = False
        for hebb_set in self.hebb_set:
            if target_analog == None or hebb_set.target == target_analog:
                if hebb_set.has_hebbs():
                    result = True
                    break
        return result
            
def strip_number(string):
    # strips numbers out of a string (specifically, a pred name)
    new_string = ''
    for i in xrange(len(string)):
        if not string[i].isdigit():
            new_string = new_string + string[i]
    return new_string

class PropUnit(TokenUnit):
    def __init__(self, my_name, my_analog):
        TokenUnit.__init__(self, my_name, my_analog) # the default init for all TokenUnits
        self.SPs = []            # the prop's list of SPs
        self.parent_sps = []     # SPs taking the prop as an argument
        self.supports = []       # the prop's support list (a list of links, akin to semantic links, w/ weights & units)

        self.pretty_name = ''

        # this stuff for random firing
        # recall that importance is already declared for all TokenUnits
        self.readiness = 1.0  # default readiness is 1
        self.support   = 0.0  # default support from other props is 0
        self.priority  = 1.0  # priority = readiness * (importance + support)

        # prop mode: -1 = child; 0 = neutral; 1 = parent
        self.mode = 0 # default mode is neutral

        # for truth detection (vers ex1.04)
        # when looking for contradictions/verifications, props integrate max activation
        self.integrator = 0.0
        self.verified  = False # true when prop matches assertion in WM

    def get_pretty_name(self):
        self.pretty_name = ''
        # write the prop name, the pred name and an open paren
        if self.SPs:
            if self.SPs[0].pred:
                pred_name = strip_number(self.SPs[0].pred.name)
            else: pred_name = 'NIL'
            self.pretty_name += pred_name+' ('
        # for each SP on the prop, write the obj name or the child prop name
        for SP in self.SPs:
            if SP.obj:
                self.pretty_name += SP.obj.name
                if SP != self.SPs[-1]:  # if this isn't the last SP, then...
                    self.pretty_name += ', '  # ... add a space and comma
            if SP.child_prop:
                self.pretty_name += SP.child_prop.name
                if SP != self.SPs[-1]:  # if this isn't the last SP, then...
                    self.pretty_name += ', '  # ... add a space and comma
        # finally, close the prop with a close paren, write import, write ; and \n
        self.pretty_name += ')'
        
    def init_state(self):  # init input, activation and mode
        self.init_input(0.0) # this function overrides TokenUnit.init_state
        self.act = 0.0
        self.mode = 0
        self.retrieved = False
        self.integrator = 0.0  # YO this may be the wrong (too frequent) place to init this
        self.readiness = 1.0  # default readiness is 1
        self.support   = 0.0  # default support from other props is 0
        self.priority  = 1.0  # priority = readiness * (importance + support)
        self.verified  = False # true when prop matches assertion in WM

    def add_supported_prop(self, prop_unit, wt):
        self.supports.append(Link(prop_unit, wt))

    def update_integrator(self):
        crossed_threshold = False
        if self.act > 0: # 0.75:    # YO! hidden threshold!
            self.integrator += self.act # YO! hidden growth rate!
            if self.integrator > 30.0: # 70.0:  # 50.0 # 5.0  # YO!  Yet Another hidden threshold!
                crossed_threshold = True
                self.verified = True # tag it so you don't report it over and over
            else:
                self.integrator *= 0.99 # 0.99  # YO!  Hidden decay rate!
        return crossed_threshold
        
class SPUnit(TokenUnit):
    def __init__(self, my_name, my_analog):
        TokenUnit.__init__(self, my_name, my_analog) # the default init for all TokenUnits
        self.parent_prop = None     # will eventually be index of SP's parent
        self.pred        = None     # will be index of pred unit
        self.obj         = None     # will be index of obj unit
        self.child_prop  = None     # will be index of child prop
        self.inhibitor   = 0.0      # the act of the SP inhibitor
        self.times_fired = 0        # number of times fired this phase set
        self.sti         = min_sti  # sensitivity to inhibition
        self.output      = 0.0      # for vers 1.04, 1/08/08s: temporal integration for props

    def init_state(self):  # init input, activation and inhibitor
        self.init_input(0.0) # this function overrides TokenUnit.init_state
        self.act = 0.0
        self.output = 0.0
        self.inhibitor = 0.0
        self.retrieved = False
        self.times_fired = 0
        self.sti = min_sti

    def update_output(self):
        # new for vers Ex1.04: Update SP output by non-leaky integrator
        # (the reason for this is so that SPs can't get active for just an instant
        #  and thereafter maintain a high output: They must accumute evidence.)
        # But be careful: You want output to grow toward max act, not toward 1
        if self.act > self.output:
            # if and only if act > output should output grow toward act     
            delta = self.act * 0.1 * (self.act - self.output) # 0.1, along with act, is growth rate
            self.output += delta
            if self.output > 1.0:
                self.output = 1.0

    def update_inhibitor(self):
        # also updates sti and counts how many times SP fired
        self.sti += dsti_dt     # decrement sti
        if self.sti < min_sti:  # but don't let go below min
            self.sti = min_sti
        # if inhibitor rising...
        if self.act > inhibitor_threshold: # then inhibitor rises
            if self.inhibitor < 0.1:       # lower threshold: slow growth
                self.inhibitor += slow_inh_growth
            else:
                self.inhibitor += fast_inh_growth # above lower thresh: fast growth
                if self.inhibitor > 1:
                    self.inhibitor = 1
                self.times_fired += 1  # update times fired
                self.sti = max_sti     # set sti to max   
        # else inhibitor falling...
        else:                              
            if self.inhibitor > 0.9:       # falling slowly
                self.inhibitor -= slow_inh_decay
            else:                          # falling rapidly
                self.inhibitor -= fast_inh_decay
                if self.inhibitor < 0:
                    self.inhibitor = 0
                

class OPUnit(TokenUnit):
    def __init__(self, my_name, my_analog, my_type):
        TokenUnit.__init__(self, my_name, my_analog) # the default token unit init
        self.semantic =  [] # this will now be a list of Lsink (which has both the weight and the semantic unit)
        self.weber_sum       = weber_constant  # 1 + the sum of the semantic weights
        # self.weight_length   = 0    # for cosine BU input function
        self.sps = []        # a list of the SPs connected to this unit
        self.type = my_type  # 'Pred' or 'Obj'

    def add_semantic(self, sem_unit, wt):
        self.semantic.append(Link(sem_unit, wt))
        self.weber_sum += wt

##    def compute_weight_length(self):  # for the cosine input function
##        self.weight_length = 0
##        for sem in self.semantic:
##            self.weight_length += pow(sem.weight, 2)
##        self.weight_length = pow(self.weight_length, 0.5)
##        if self.weight_length == 0:
##            self.weight_lenght = 1 # to avoid division by zero errors

# 9/21/07, for VersEx1.01: Groups can't just have simple lists of their member props and
#                          member groups.  They need to integrate their inputs over time,
#                          so they need to have GroupConnectors, data structures that point
#                          to the connected prop or group AND have an integrator that records
#                          that unit's largest activation during the current temporal window.
#                          This is gonna add SO much complexity!  Aiee!
class GroupConnector(object):     # this is a connection between OP and semantic or suport link 'tween props
    def __init__(self, unit):
        self.unit       = unit  # unit is the prop or child group on the other end of the link
        self.integrator = 0.0   # init to 0.0 to make it a float

class GroupUnit(TokenUnit):
    def __init__(self, my_name, my_analog, my_type='GENERIC', truth_status=None):
        TokenUnit.__init__(self, my_name, my_analog)

        # 9/24/07, for vers Ex 1.02:
        # The "processed" flag for intelligent automatic (LISA-guided)
        # flow of control: Once a group has been used for retrieval and mapping
        # (in the case of a group in the explanandum) or for inference (in the case
        # of a group retrieved from LTM), tag the group.processed flag as True;
        # in future, only retrieve (from LTM) or drive with (in the driver) groups
        # not yet flaged as processed
        #
        # 10/26/07: The "processed" boolean replaced with the real-valued "refractory"
        #    which taked a value from 0.0 (not processed) to 1.0 (very recently processed)
        #    and which decays over time.  Allows for stochastic re-processing of
        #    previously processed groups
        self.refractory = 0.0

        # prop units
        self.prop = []
        self.num_props = 0

        # other group units
        self.group = []
        self.num_groups = 0

        # Level (in group hierarchy): 0 if only has props; otherwise 1+ the level
        #     of the highest-level group it takes as an argument
        self.level = 0

        # 2/11/08: self.type is CAUSE, EFFECT, CAUSAL, ENABLER, ENABLED, ENABLING, NOT or GENERIC
        self.type = my_type
        self.truth_status = truth_status

        # semantics ( now [4/26/07] semantics are links, w/ weights and units 
        self.semantic   = []
        self.weber_sum  = 1.0

        # integrator for retrieval from LTM: used only with dormant analogs (for now) 3/26/08
        # NOTE: Beware!!  This integrator is NOT to be confused with the integrator on the group connector!
        self.integrator = 0.0

    def init_state(self):  # init input, activation and retrieval status
        self.init_input(0.0) # NOTE: Assumes a refresh value of 0
        self.act = 0.0
        self.retrieved = False
        self.integrator = 0.0 # 3/26/08: not to be confused w/ integrators on Group Connectors!
        # also init integrators
        for prop in self.prop:
            prop.integrator = 0.0
        for group in self.group:
            group.integrator = 0.0

    def add_semantic(self, sem_unit, wt):
        self.semantic.append(Link(sem_unit, wt))
        self.weber_sum += wt

    def compute_weight_length(self):  # for the cosine input function
        self.weight_length = 0
        for sem in self.semantic:
            self.weight_length += pow(sem.weight, 2)
        self.weight_length = pow(self.weight_length, 0.5)
        if self.weight_length == 0:
            self.weight_lenght = 1 # to avoid division by zero errors


class SemanticUnit(Unit):
    def __init__(self, my_name):
        Unit.__init__(self, my_name)
        self.act   = 0.0
        self.input = 0.0
        self.level = 0   # for group semantics

        self.members = []  # for vers 1.03: semantics that are subsets of this one
        self.categories = [] # for vers 1.03: semantics that are supersets of this one
        self.contra_integrator = 0.0 # integrator for contradiction detection, 12/06/07
        self.anomaly_detected = False

    def init_state(self):
        self.act = 0.0
        self.input = 0.0
        self.contra_integrator = 0.0
        self.anomaly_detected = False

    def update_activation(self, max_input):
        if max_input < 1.0:
            divisor = 1.0
        else:
            divisor = max_input
        self.act = self.input/divisor

class Analog(object):
    def __init__(self, my_name):
        self.name = my_name
        self.index = None

        # for graphics
        self.rect  = [0,0,0,0] # [left, top, width, height]

        # units
        self.group = []
        self.prop =  []
        self.sp =    []
        self.pred =  []
        self.obj =   []
        # inhibited is a list of groups that have already participated
        # in the explanation and are now temporarily out ofthe game
        self.inhibited = []

        self.num_groups = 0
        self.num_props = 0
        self.num_SPs = 0
        self.num_preds = 0
        self.num_objs = 0

        # for SSL
        self.ready_to_learn = True # default to True for schema induction; then
                                   # set to False in build when props are made
                                   # in a schema, it will remain true, so schema will
                                   # always be ready to learn

        # infants
        self.infant_prop =  None
        self.infant_sp =    None
        self.infant_pred =  None
        self.infant_obj =   None
        self.infant_child = None
        self.inferred_groups = [] # "inferred" not "infant" see notes of 5/19/07
        self.unexplained_effects = [] # vers ex 1.11 5/28/08: effect groups yet to be explained

        # status
        self.is_driver = False
        self.is_recip  = False

        # mapping quality and similarity to other analogs
        self.mapping_quality = []  # Links of mapping quality to other analogs
        self.MIP_similarity  = []  # Links of MIP similarity to other analogs
        self.MOP_similarity  = []  # Links of MOP similarity to other analogs

    def get_index(self, all_analogs):
        self.index = all_analogs.index(self)

    def set_location(self, pred_rect):
        # pred_rect contains the coordinates of the preceding analog
        # for now, just put it below the last one and to the left
        # I believe the rect is structured as [left_x, top_y, right_x, bottom_y]
        self.rect[0] = 0 # set own left x to far left
        self.rect[1] = pred_rect[1] + pred_rect[3] + 2 # set own top_y 2 pixels below last bottom y
        # predecessor's:  top            height
        self.rect[2] = 0 # set own width to 0 for now
        self.rect[3] = 0 # set own height to 0 for now
    
        # now, locate your own units to and figure out your right_x and bottom_y
        # init them to left_x and top_y and update as you go along
        width  = 0
        height = 0

        # locate the groups, starting at own left and 16 below own top
        # init the last_unit_rect to be a properly-proportioned unit rectangle whose y coordinates
        #   are where you want the y coordinate of the first group and whose right-most edge (rect[2])
        #   is at 0

        # 5/27/08: Locate top-level groups at hte top and 0th level groups one line down from there
        #          Then after you re-locate the props based ontheir SPs (below) relocate the 0th level
        #             groups based on their props and relocate the top-level groups based on their 0th
        #             level groups

        # top-level groups: at own left and text_height below own top
        next_top = self.rect[1]+text_height # for keeping track of which row (on the screen) to start the next row of units
        last_unit_rect = [1 - unit_width, next_top, unit_width, unit_height]
        for group in self.group:
            if group.level > 0:
                last_unit_rect = group.set_location(last_unit_rect)
                next_top = last_unit_rect[1] + unit_height + 1 # self.rect[1]+text_height+unit_height+1
        # 0th level groups: on next line
        last_unit_rect = [1 - unit_width, next_top, unit_width, unit_height]
        for group in self.group:
            if group.level == 0:
                last_unit_rect = group.set_location(last_unit_rect)
                next_top = last_unit_rect[1] + unit_height + 1 # self.rect[1]+text_height+unit_height+1
                # next_top = self.rect[1]+text_height+2*unit_height+2
        
        # locate the props, starting at own left and one below last group
        last_unit_rect = [1 - unit_width, next_top, unit_width, unit_height]
        for prop in self.prop:
            last_unit_rect = prop.set_location(last_unit_rect)
            
        # locate the SPs, starting at own left and one below the last prop
        if self.prop != []:
            new_top = self.prop[-1].rect[1] + unit_height + 1
            last_unit_rect = [1 - unit_width, new_top, unit_width, unit_height]
        # if the analogs have no groups, then start the props where the groups would have been
        else: last_unit_rect = [1 - unit_width, self.rect[1]+16, unit_width, unit_height]
        for sp in self.sp:
            last_unit_rect = sp.set_location(last_unit_rect)
        # update analog width
        if self.sp:
            if (self.sp[-1].rect[0] + unit_width) > width: width = self.sp[-1].rect[0] + unit_width + 1

        # Now if pretty_format, then RElocate all the P units so that they're centered over their SPs
        if pretty_format:
            for prop in self.prop:
                if prop.SPs:
                    mean_x = 0
                    n      = 0
                    for sp in prop.SPs:
                        mean_x += sp.rect[0]
                        n += 1
                    if n > 0:
                        mean_x = int(round(mean_x/n))
                        prop.rect[0] = mean_x
                        prop.act_rect[0] = mean_x + 1
            # and RElocate the bottom-level groups based on the props
            for group in self.group:
                if group.level == 0:
                    # relocate the group based on its props
                    if group.prop:
                        mean_x = 0
                        n      = 0
                        for prop_link in group.prop:
                            mean_x += prop_link.unit.rect[0]
                            n      += 1
                        if n > 0:
                            mean_x = int(round(mean_x/n))
                            group.rect[0] = mean_x
                            group.act_rect[0] = mean_x + 1
            # now, go through all pairs of bottom-level groups to make sure no two have the same coordinates
            # if they do, then move one left and one right
            for group1 in self.group:
                if group1.level == 0:
                    for group2 in self.group:
                        if group2.level == 0:
                            if group1.rect[0] == group2.rect[0]:
                                # move group1 left and group2 right
                                group1.rect[0] -= int(round(unit_width/2)+1)
                                group2.rect[0] += int(round(unit_width/2)+1)
                                group1.act_rect[0] -= int(round(unit_width/2)+1)
                                group2.act_rect[0] += int(round(unit_width/2)+1)
            # Finally, go through all the level1 groups and relocate them based on their member groups
            for group in self.group:
                if group.level > 0:
                    # relocate based on member groups
                    if group.group:
                        mean_x = 0
                        n      = 0
                        for group_link in group.group:
                            mean_x += group_link.unit.rect[0]
                            n      += 1
                        if n > 0:
                            mean_x = int(round(mean_x/n))
                            group.rect[0] = mean_x
                            group.act_rect[0] = mean_x + 1
            # update analog width
            for group in self.group:
                if (group.rect[0] + unit_width) > width: width = self.group[-1].rect[0] + unit_width + 1
                    
        # locate the preds, starting at own left and one below last SP
        if self.sp != []:
            new_top = self.sp[-1].rect[1] + unit_height + 1
            last_unit_rect = [1 - unit_width, new_top, unit_width, unit_height]
        # if the analogs have no groups, then start the props where the groups would have been
        else: last_unit_rect = [1 - unit_width, self.rect[1]+16, unit_width, unit_height]
        for pred in self.pred:
            last_unit_rect = pred.set_location(last_unit_rect)
        # update analog width
        if self.pred != []:
            if (self.pred[-1].rect[0] + unit_width) > width: width = self.pred[-1].rect[0] + unit_width + 1

        # locate the objs, starting at own left and one below last pred
        if self.pred != []:
            new_top = self.pred[-1].rect[1] + unit_height + 1
            last_unit_rect = [1 - unit_width, new_top, unit_width, unit_height]
        # if the analogs have no groups, then start the props where the groups would have been
        else: last_unit_rect = [1 - unit_width, self.rect[1]+16, unit_width, unit_height]
        for obj in self.obj:
            last_unit_rect = obj.set_location(last_unit_rect)
        # update analog width
        if self.obj != []:
            if (self.obj[-1].rect[0] + unit_width) > width: width = self.obj[-1].rect[0] + unit_width + 1

        # calculate analog height: It's bottom_y minus its top_y
        # in turn, it's bottom_y is the bottom_y of its last unit, plus node_height plus 1
        if self.obj: bottom_y = self.obj[-1].rect[1] + unit_height + 1
        elif self.pred: bottom_y = self.pred[-1].rect[1] + unit_height + 1
        elif self.sp: bottom_y = self.sp[-1].rect[1] + unit_height + 1
        elif self.prop: bottom_y = self.prop[-1].rect[1] + unit_height + 1
        elif self.group: bottom_y = self.group[-1].rect[1] + unit_height + 1
        else: bottom_y = self.rect[1] + 1
        
        # finally, update own right- and bottom-most coordinates
        self.rect[2] = width
        self.rect[3] = bottom_y - self.rect[1]

        # return the value of, but not a poniter to, self.rect
        #   that's what the copy.copy() function does
        return copy.copy(self.rect)

    def draw_name(self):
        # at beginning of phase set, draws analog name and status and draws all its units' names
        #
        # 1) Erase old self
        graphics_window.fill(BLACK, self.rect)
        
        # 2) Figure out what color to draw one self and what status name to use
        if self.is_driver:
            color = YELLOW
            status_name = 'Driver'
            rect_width = 4 # 0 is filled
        elif self.is_recip:
            color = RED
            status_name = 'Recip'
            rect_width = 4 # wide line
        else:
            color = DARKBLUE
            status_name = 'Dormant'
            rect_width = 1 # narrow line

        # 3) Draw own rect
        pygame.draw.rect(graphics_window, color, self.rect, rect_width)
        # draw.rect(window, color, rectangle info, width=0) if width = 0, rect will be filled

        # 4) Draw own name and status
        text_info = self.name+': '+status_name # status_name is set up in step 2
        text_rect = [self.rect[0]+1, self.rect[1]+1, self.rect[2], self.rect[1] + text_height]
        # render the text (??)
        the_text  = symfont.render(text_info, True, color, BLACK)
        # and blit it to the screen
        graphics_window.blit(the_text, text_rect)

        # 5) Go through all units and print their names & rectangles
        for group in self.group:
            group.draw_name(ORANGE)
        for prop in self.prop:
            prop.draw_name(YELLOW)
        for sp in self.sp:
            sp.draw_name(BLUE)
        for pred in self.pred:
            pred.draw_name(GREEN)
        for obj in self.obj:
            obj.draw_name(RED)
        
    
    def add_mapping_link(self, other_analog):
        self.mapping_quality.append(Link(other_analog, 0))

    def add_MIP_link(self, other_analog):
        self.MIP_similarity.append(Link(other_analog, 0))

    def add_MOP_link(self, other_analog):
        self.MOP_similarity.append(Link(other_analog, 0))

    def has_inferred_units(self):
        # boolean function that returns True iff analog has any inferred units
        result = False
        for group in self.group:
            if group.inferred:
                result = True
                break
        if not result:
            for prop in self.prop:
                if prop.inferred:
                    result = True
                    break
        if not result:
            for sp in self.sp:
                if sp.inferred:
                    result = True
                    break
        if not result:
            for pred in self.pred:
                if pred.inferred:
                    result = True
                    break
        if not result:
            for obj in self.obj:
                if obj.inferred:
                    result = True
                    break
        return result

    def has_hebbs(self, target_analog):
        # returns true iff analog has hebbs to target analog
        result = False
        for group in self.group:
            if group.has_hebbs(target_analog):
                result = True
                break
        if not result:
            for prop in self.prop:
                if prop.has_hebbs(target_analog):
                    result = True
                    break
            for sp in self.sp:
                if sp.has_hebbs(target_analog):
                    result = True
                    break
            for pred in self.pred:
                if pred.has_hebbs(target_analog):
                    result = True
                    break
            for obj in self.obj:
                if obj.has_hebbs(target_analog):
                    result = True
                    break
        return result
            


class SequenceElement(object):
    def __init__(self, driver, recip, control, ss_learn, similarity, inferred, goals=[]):
        self.index = None
        self.driver = driver
        self.recip = recip
        self.phase_set = []
        self.control  = control
        self.inferred = inferred # set to true if created by LISA during explanation; false if specified in sym file
        # control = 'props' means non-random order; props specified by user
        # control = 'groups' means random firing order determined by group
        # control = 'random' means random firing order over whole analog (i.e., not group-based)
        # special operations
        self.update_hebbs = False # gets set later
        self.sslearn      = ss_learn  # self-supervised learning: -1 = off; 1 = on; 0 = LISA decides
        self.compute_similarity = similarity # gets set later

        # variables specifically for simulating explanation 9/14/07
        self.goal = goals
        # top_level_goal is mode of operation:
        # goal[0] = 'NORMAL' means default LISA mode
        # goal[0] = 'EXPLAIN' means explanation mode
        # goal[0] = 'SOLVE' means problem solving mode
        # goal[0] = 'PREDICT' means prediction mode
        # goal[0] is top-level goal
        # goal is a goal hierarchy: goal[-1] is bottom-level (immediate) goal
        #
        # goal is a list of goals and sub-goals.  As of 9/14/07, I don't know exactly what this
        # is gonna do or how it'll work, but I think I'm gonna need it

        self.detect_anomalies = False # 12/06/07

    def add_goal(self, new_goal):
        # add a new goal to the goal stack
        self.goal.append(new_goal)
        if diagnostics:
            print 'new goal',new_goal,'added to sequence element',self.index
            print 'goals of element',self.index,'are now',
            for a_goal in self.goal:
                print a_goal,' ',
            print
        
    def pop_goal(self, the_goal=None):
        # pop the_goal off the stack
        # if no argument is passed in then it just pops the last (most current,
        # and lowest-in-the-hierarchy) goal.
        # else it pops every goal up to the_goal
        if the_goal == None:
            dead_goal = self.goal.pop(-1) # pop the last goal
            if diagnostics:
                print 'goal',dead_goal,'popped from sequence element',self.index
        else:
            # check to make sure the_goal is in the goal hierarchy...
            if the_goal in self.goal:
                # if it is, then start popping goals until it has been popped
                the_goal_popped = False
                while not(the_goal_popped) and not(self.goal == []):
                    last_goal = self.goal.pop(-1)
                    if last_goal == the_goal:
                        the_goal_popped = True
                    if diagnostics:
                        print 'goal',last_goal,'popped from sequence element',self.index
                        print 'goals of element',self.index,'are now',
                        for a_goal in self.goal:
                            print a_goal,' ',
                        print

    def get_index(self, all_elements):
        self.index = all_elements.index(self)


# init the main data structures
analog = []
workspace = None    # 4/15/08, vers Ex 1.08
explanandum = None  # 4/19/08, vers Ex 1.09
op_semantic = []    # for DORA mode (2/20/08, vers Ex 1.05)
group_semantic = []
hebb_unit = []
sequence = []
        
