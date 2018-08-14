Note: Minister/Hard4.sym 
Note: First attempt to produce the “Coke used to contain cocaine” explanation
Note: Same difficulties as Hard3 and then some:
Note: Coke containing cocaine is an Instantiation of a more general
Note:   kind of situation… and one that ministers might disapprove of
Note: This need to appreciate x as an instantiation of y, where ministers
Note:   might not like any kind f y, is a new problem I’m not sure we’re
Note:   prepared to solve (aiee!)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of minister/hard4
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
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE     Phase set: P1
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5
Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4
Seq. 4    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE     Phase set: 'P1'
Seq. 5    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: 'P1'
Seq. 6    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3
Seq. 7    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1
Seq. 8    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2
Seq. 9    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE     Phase set: 'P1'
Seq. 10    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: 'P1'
Seq. 11    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5
Seq. 12    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3
Seq. 13    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4
Seq. 14    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE     Phase set: 'P1'
Seq. 15    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: 'P1'


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From Explanandum to WorkSpace:
  Groups:
  Props:
    From 'P1' to:    P5 = 0.982
  SPs:
    From 'SP2' to:    SP5.2 = 0.992
  Preds:
    From 'IMMORAL1' to:    DISLIKE2 = 0.957
  Objs:
    From COKE to:    IMMORAL-STUFF = 0.969

From WorkSpace to Explanandum:
  Groups:
  Props:
    From P5 to:    'P1' = 0.982
  SPs:
    From SP5.1 to:
    From SP5.2 to:    'SP2' = 0.992
  Preds:
    From DISLIKE1 to:
    From DISLIKE2 to:    'IMMORAL1' = 0.957
  Objs:
    From MINISTER to:
    From IMMORAL-STUFF to:    COKE = 0.969



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Explanandum * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 

     Groups: 
     EXPLANANDUM (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DISLIKE (MINISTER, COKE) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P1') 'IMMORAL' (COKE) 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P1') 'IMMORAL' (COKE) 

EFFECT2 (index = 3 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'IMMORAL' (COKE) 

'CE-4' (index = 4 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_0.5 (0.778) 

     Groups: 
     EFFECT2 (index = 3 level =0):  
          Semantics: EFFECT (1.000) 
          Props: 'P1') 'IMMORAL' (COKE) 

     'CAUSE5' (index = 5 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P2') 'CONTAINED' (COKE, 'COCAINE') 'P3') 'ILLEGAL' ('COCAINE') 


'CAUSE5' (index = 5 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P2') 'CONTAINED' (COKE, 'COCAINE') 'P3') 'ILLEGAL' ('COCAINE') 

EFFECT3 (index = 6 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'IMMORAL' (COKE) 

'EFFECT7' (index = 7 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P4') 'IMMORAL' ('COKE-CORP') 

'CE-8' (index = 8 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT7' (index = 7 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P4') 'IMMORAL' ('COKE-CORP') 

     'CAUSE9' (index = 9 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P1') 'IMMORAL' (COKE) 'P5') 'MANUFACTURE' ('COKE-CORP', COKE) 


'CAUSE9' (index = 9 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P1') 'IMMORAL' (COKE) 'P5') 'MANUFACTURE' ('COKE-CORP', COKE) 

EFFECT4 (index = 10 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'IMMORAL' (COKE) 


Props:
'P1':  [ 'IMMORAL1' + COKE ] 
'P2':  [ 'CONTAINED1' + COKE ] [ 'CONTAINED2' + 'COCAINE' ] 
'P3':  [ 'ILLEGAL1' + 'COCAINE' ] 
'P4':  [ 'IMMORAL1' + 'COKE-CORP' ] 
'P5':  [ 'MANUFACTURE1' + 'COKE-CORP' ] [ 'MANUFACTURE2' + COKE ] 

Preds:
'IMMORAL1':
   IMMORAL(1.000)
   ETHICS(1.000)
   EVIL(1.000)
   NEGATIVE(1.000)
   MORALS(1.000)

'CONTAINED1':
   TIME=PAST(1.000)
   CONTAINER(1.000)
   HOLDER(1.000)
   PRODUCT(1.000)

'CONTAINED2':
   TIME=PAST(1.000)
   CONTAINEE(1.000)
   HELD(1.000)
   INGREDIENT(1.000)

'ILLEGAL1':
   LAW(1.000)
   ILLEGAL(1.000)
   NOT-LEGAL(1.000)
   IMMORAL(1.000)

'MANUFACTURE1':
   MAKE1(1.000)
   PRODUCE1(1.000)
   MANUFACTURE1(1.000)

'MANUFACTURE2':
   MAKE2(1.000)
   PRODUCE2(1.000)
   MANUFACTURE2(1.000)


Objs:
'COCAINE':
   ILLEGAL(1.000)
   DRUG(1.000)
   COCAINE(1.000)
   OPIATE(1.000)
   ADDICTIVE(1.000)

'COKE-CORP':
   COKE(1.000)
   MANUFACTURER(1.000)
   COMPANY(1.000)
   MAKE(1.000)
   COKE-CORP(1.000)


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 2 of minister/hard4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE     Phase set: P1
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From Explanandum to WorkSpace:
  Groups:
    From EXPLANANDUM to:    EFFECT1 = 0.879
  Props:
    From P1 to:    P5 = 0.990
  SPs:
    From SP1.1 to:    SP5.1 = 0.993
    From SP1.2 to:    SP5.2 = 0.993
  Preds:
    From DISLIKE1 to:    DISLIKE1 = 0.970
    From DISLIKE2 to:    DISLIKE2 = 0.970
  Objs:
    From MINISTER to:    MINISTER = 0.970
    From COKE to:    IMMORAL-STUFF = 0.959

From WorkSpace to Explanandum:
  Groups:
    From EFFECT1 to:    EXPLANANDUM = 0.879
  Props:
    From P5 to:    P1 = 0.990
  SPs:
    From SP5.1 to:    SP1.1 = 0.993
    From SP5.2 to:    SP1.2 = 0.993
  Preds:
    From DISLIKE1 to:    DISLIKE1 = 0.970
    From DISLIKE2 to:    DISLIKE2 = 0.970
  Objs:
    From MINISTER to:    MINISTER = 0.970
    From IMMORAL-STUFF to:    COKE = 0.959


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 3 of minister/hard4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE     Phase set: P1
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3
Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1
Seq. 4    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2
Seq. 5    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE     Phase set: 'P2'
Seq. 6    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE     Phase set: 'P3'
Seq. 7    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: 'P2'
Seq. 8    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: 'P3'
Seq. 9    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: 'P2'
Seq. 10    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: 'P3'

Seq. 11    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5
Seq. 12    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3
Seq. 13    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4

Seq. 14    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5
Seq. 15    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3
Seq. 16    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4

Seq. 17    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5
Seq. 18    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3
Seq. 19    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4

Seq. 20    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5
Seq. 21    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3
Seq. 22    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4
