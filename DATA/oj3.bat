Note: Andrei&Zack/OJ3.sym
Note: Why do we drink OJ for breakfast?
Note: This time, there is a freaky possible reason

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 1 runs of andrei&zach/oj3
* * * * * * * * * * * * * * * * * * * * * * * * * * * 


* * * * * * * * * * * * * * * * * * * * *
Parameters values:
    Neurally-plausible WM
    Semantic Noise = 0.0000
    Semantic Death = 0.0000
    Attention = 1.0000
    Within-group support = 1.0000
    Driver Inhibition = 1.0000
    Recip Inhibition = 1.0000
    Hebb Learning Rate = 1.0000
    Bail Upon Settling = False
    Using Vers142 Mapping Algorithm
* * * * * * * * * * * * * * * * * * * * *


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 1 of andrei&zach/oj3
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Larry    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:HAS (LARRY, FETISH) P2:DRINK (LARRY, OJ)
Seq. 1    Driver:Larry    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN     Phase set: P1:HAS (LARRY, FETISH) P2:DRINK (LARRY, OJ)
Seq. 2    Driver:Larry    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:HAS (LARRY, FETISH)
Seq. 3    Driver:Larry    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P2:DRINK (LARRY, OJ)
Seq. 4    Driver:WorkSpace    Recip : Larry    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:PART_OF (OJ, BREAKFAST)
Seq. 5    Driver:WorkSpace    Recip : Larry    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:DELICIOUS (OJ)
Seq. 6    Driver:WorkSpace    Recip : Larry    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:PART_OF (OJ, BREAKFAST)
Seq. 7    Driver:WorkSpace    Recip : Larry    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:DELICIOUS (OJ)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Larry * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) HAS (LARRY, FETISH) P2) DRINK (LARRY, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P2') 'DELICIOUS' (OJ) 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P2') 'DELICIOUS' (OJ) 

EFFECT1 (index = 3 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'DELICIOUS' (OJ) 


Props:
'P2':  [ 'DELICIOUS1' + OJ ] 

Preds:
'DELICIOUS1':
   TASTE1(1.000)
   GOOD1(1.000)
   YUM1(1.000)
   DELICIOUS1(1.000)


Objs:
