Note: Minister/Hard4.sym 
Note: First attempt to produce the “Coke used to contain cocaine” explanation
Note: Same difficulties as Hard3 and then some:
Note: Coke containing cocaine is an Instantiation of a more general
Note:   kind of situation… and one that ministers might disapprove of
Note: This need to appreciate x as an instantiation of y, where ministers
Note:   might not like any kind f y, is a new problem I’m not sure we’re
Note:   prepared to solve (aiee!)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 3 runs of minister/hard4
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
Run 1 of minister/hard4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 


Sequence:
Seq. 0    
Driver:Explanandum    
Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE     Phase set: P1
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     
Phase set: P1
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3

Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1

Seq. 4    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2



* * * Current Mapping Connections From Explanandum to WorkSpace * * *
  Groups:
    From 'CE-1' to:    CE-1 = 0.879
  Props:
    From P1 to:    P1 = 0.990
    From 'P1' to:    P3 = 0.990
    
From 'P2' to:    P2 = 0.990
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From 'SP2' to:    SP3.1 = 0.990
    From 'SP3' to:    SP3.2 = 0.993
    From 'SP4' to:    
SP2.1 = 0.990
    From 'SP5' to:    SP2.2 = 0.990
  Preds:
    From DISLIKE1 to:    OPPOSE1 = 0.970
    From DISLIKE2 to:    OPPOSE2 = 0.970
    
From 'DISAGREE-WITH1' to:    DISAGREE-WITH1 = 0.969
    From 'DISAGREE-WITH2' to:    DISAGREE-WITH2 = 0.970
    From 'SUPPORT1' to:    SUPPORT1 = 0.969
    
From 'SUPPORT2' to:    SUPPORT2 = 0.969
  Objs:
    From MINISTER to:    PERSON = 0.970
    From COKE to:    A-CAUSE = 0.970
    From 'ENTITY' to:    ENTITY = 0.970




* * * * Inferred Groups and Props in Explanandum * * * *

Groups:
'CE-1' (index = 1 level =1):  
     
Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 



Props:
'P1':  [ 'DISAGREE-WITH1' + MINISTER ] [ 'DISAGREE-WITH2' + 'ENTITY' ] 

'P2':  [ 'SUPPORT1' + 'ENTITY' ] [ 'SUPPORT2' + COKE ] 



* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *




* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * 
Analog Explanandum * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     
Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 




Props:
'P1':  [ 'DISAGREE-WITH1' + MINISTER ] [ 'DISAGREE-WITH2' + 'ENTITY' ] 

'P2':  [ 'SUPPORT1' + 'ENTITY' ] [ 'SUPPORT2' + COKE ] 


Preds:

'DISAGREE-WITH1':
   DISLIKE1(1.000)
   –LIKE1(1.000)
   DISAGREE1(1.000)


'DISAGREE-WITH2':
   DISLIKE2(1.000)
   –LIKE2(1.000)
   DISAGREE2(1.000)


'SUPPORT1':
   HELP1(1.000)
   FACILITATE1(1.000)
   SUPPORT1(1.000)


'SUPPORT2':
   HELP2(1.000)
   FACILITATE2(1.000)
   SUPPORT2(1.000)



Objs:
'ENTITY':
   PERSON(1.000)
   ORGANIZATION(1.000)



* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 2 of minister/hard4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 


Sequence:
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE RETRIEVE     Phase set: P1

Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE MAP     Phase set: P1

Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5

Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3

Seq. 4    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4



* * * Current Mapping Connections From Explanandum to WorkSpace * * *
  
Groups:
    From 'CE-1' to:    CE-2 = 0.879
  
Props:
  SPs:
  Preds:
  Objs:



* * * * Inferred Groups and Props in Explanandum * * * *


Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 




Props:


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *




* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *


* * * * * Analog Explanandum * * * * *


Groups:
'CE-1' (index = 1 level =1):  
     
Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 




Props:

Preds:

Objs:

* * * * * * * * * * * * * * * * * * * * * * * * * * * 


Run 3 of minister/hard4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 


Sequence:
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    
Goals: EXPLAIN RETRIEVE RETRIEVE RETRIEVE     Phase set: P1
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    
Goals: EXPLAIN RETRIEVE RETRIEVE MAP     Phase set: P1
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    
Goals: EXPLAIN INFER     Phase set: P5
Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     
Phase set: P3
Seq. 4    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     
Phase set: P4


* * * Current Mapping Connections From Explanandum to WorkSpace * * *
  
Groups:
    From 'CE-1' to:    CE-2 = 0.879
  Props:
  SPs:
  Preds:
  Objs:




* * * * Inferred Groups and Props in Explanandum * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 



Props:



* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *




* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *


* * * * * Analog Explanandum * * * * *


Groups:
'CE-1' (index = 1 level =1):  
     S
emantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 



Props:

Preds:

Objs:
