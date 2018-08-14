Note: Minister/Hard3.sym (manufacture() prop exists in the schemas)
Note: Made from Easy2 by addiing a garbage analog to LTM
Note: This is 'hard' 'cause the relevant knowledge is split over two analogs 
Note: However, there's still no distracting info.  Just the Most Basic test of whether LISA
Note:  can do it at all.  If it succeeds on this, Then we'll branch out...
Note: 4/21/08:
Note: Removing the manufacture() prop from the schema

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 20 runs of minister/hard3
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
Run 1 of minister/hard3
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Minister    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE     Phase set: P1
Seq. 1    Driver:Minister    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1
Seq. 2    Driver:WorkSpace    Recip : Minister    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3
Seq. 3    Driver:WorkSpace    Recip : Minister    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1
Seq. 4    Driver:WorkSpace    Recip : Minister    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2


* * * Current Mapping Connections From Minister to WorkSpace * * *
  Groups:
    From CE-1 to:    CE-1 = 0.879
  Props:
    From P1 to:    P3 = 0.990
    From P1 to:    P1 = 0.990
    From P2 to:    P2 = 0.990
  SPs:
    From SP1.1 to:    SP3.1 = 0.993
    From SP1.2 to:    SP3.2 = 0.993
    From SP2 to:    SP1.1 = 0.990
    From SP3 to:    SP1.2 = 0.993
    From SP4 to:    SP2.1 = 0.982
    From SP5 to:    SP2.2 = 0.982
  Preds:
    From PREFER1 to:    AGREE-WITH1 = 0.970
    From PREFER2 to:    AGREE-WITH2 = 0.970
    From "SUPPORT1" to:    SUPPORT1 = 0.969
    From "SUPPORT2" to:    SUPPORT2 = 0.970
  Objs:
    From MINISTER to:    PERSON = 0.970
    From COKE to:    ENTITY = 0.970
    From "A-CAUSE" to:    A-CAUSE = 0.970



* * * * Inferred Groups and Props in Explanandum * * * *

Groups:
CE-1 (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     EXPLANANDUM (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) PREFER (MINISTER, COKE) 



Props:
P1:  [ "SUPPORT1" + MINISTER ] [ "SUPPORT2" + "A-CAUSE" ] 
P2:  [ "SUPPORT1" + COKE ] [ "SUPPORT2" + "A-CAUSE" ] 


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Minister * * * * *

Groups:
CE-1 (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     EXPLANANDUM (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) PREFER (MINISTER, COKE) 



Props:
P1:  [ "SUPPORT1" + MINISTER ] [ "SUPPORT2" + "A-CAUSE" ] 
P2:  [ "SUPPORT1" + COKE ] [ "SUPPORT2" + "A-CAUSE" ] 

Preds:
"SUPPORT1":
   HELP1(1.000)
   FACILITATE1(1.000)
   SUPPORT1(1.000)

"SUPPORT2":
   HELP2(1.000)
   FACILITATE2(1.000)
   SUPPORT2(1.000)


Objs:
"A-CAUSE":
   ABSTRACT(1.000)
   GOAL(1.000)
   DESIRE(1.000)
   WORK-TOWARD(1.000)


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 2 of minister/hard3
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Minister    Recip :    Fire control:groups    Goals: EXPLAIN INFER RETRIEVE     Phase set: P1
Seq. 1    Driver:Minister    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN INFER MAP     Phase set: P1
Seq. 2    Driver:WorkSpace    Recip : Minister    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3
Seq. 3    Driver:WorkSpace    Recip : Minister    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1
Seq. 4    Driver:WorkSpace    Recip : Minister    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2
Seq. 5    Driver:Minister    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1
