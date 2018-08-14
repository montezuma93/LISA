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
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3
Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1
Seq. 4    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2


* * * Current Mapping Connections From Explanandum to WorkSpace * * *
  Groups:
    From EXPLANANDUM to:    EFFECT1 = 0.879
    From 'CE-1' to:    CE-1 = 0.879
    From 'CAUSE2' to:    CAUSE1 = 0.879
  Props:
    From P1 to:    P3 = 0.982
    From 'P1' to:    P1 = 0.990
    From 'P2' to:    P2 = 0.982
  SPs:
    From SP1.1 to:
    From SP1.2 to:    SP3.1 = 0.992
    From 'SP2' to:    SP1.1 = 0.990
    From 'SP3' to:    SP1.2 = 0.993
    From 'SP4' to:    SP2.1 = 0.987
  Preds:
    From DISLIKE1 to:
    From DISLIKE2 to:    WAS-IMMORAL1 = 0.970
    From 'CONTAINED1' to:    CONTAINED1 = 0.969
    From 'CONTAINED2' to:    CONTAINED2 = 0.970
    From 'ILLEGAL1' to:    ILLEGAL1 = 0.969
  Objs:
    From MINISTER to:
    From COKE to:    COKE = 0.970
    From 'COCAINE' to:    COCAINE = 0.970



* * * * Inferred Groups and Props in Explanandum * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_0.5 (0.778) 

     Groups: 
     EXPLANANDUM (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DISLIKE (MINISTER, COKE) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 'P2')  


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 'P2')  


Props:
'P1':  [ 'CONTAINED1' + COKE ] [ 'CONTAINED2' + 'COCAINE' ] 
'P2':  [ 'ILLEGAL1' + 'COCAINE' ] 
Seq. 5    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE     Phase set: 'P1'
Seq. 6    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: 'P2'
Seq. 7    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: 'P1'
Seq. 8    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: 'P2'
Seq. 9    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5
Seq. 10    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3
Seq. 11    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4


* * * Current Mapping Connections From Explanandum to WorkSpace * * *
  Groups:
    From 'EFFECT4' to:    EFFECT2 = 0.879
    From 'CE-5' to:    CE-2 = 0.879
    From 'CAUSE6' to:    CAUSE2 = 0.879
  Props:
    From 'P1' to:    P3 = 0.982
    From 'P3' to:    P5 = 0.982
    From 'P4' to:    P4 = 0.990
  SPs:
    From 'SP2' to:    SP3.1 = 0.987
    From 'SP3' to:
    From 'SP5' to:    SP5.1 = 0.987
    From 'SP6' to:    SP4.1 = 0.990
    From 'SP7' to:    SP4.2 = 0.990
  Preds:
    From 'CONTAINED1' to:
    From 'CONTAINED2' to:    WAS-IMMORAL1 = 0.880
    From 'MANUFACTURE1' to:    MANUFACTURE1 = 0.969
    From 'MANUFACTURE2' to:    MANUFACTURE2 = 0.969
  Objs:
    From COKE to:    COKE = 0.969
    From 'COCAINE' to:
    From 'COKE-CORP' to:    COKE-CORP = 0.969



* * * * Inferred Groups and Props in Explanandum * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_0.5 (0.778) 

     Groups: 
     EXPLANANDUM (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DISLIKE (MINISTER, COKE) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 'P2') 'ILLEGAL' ('COCAINE') 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 'P2') 'ILLEGAL' ('COCAINE') 

EFFECT2 (index = 3 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 'P2') 'ILLEGAL' ('COCAINE') 

'EFFECT4' (index = 4 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P3') 'CONTAINED' ('COKE-CORP') 

'CE-5' (index = 5 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT4' (index = 4 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P3') 'CONTAINED' ('COKE-CORP') 

     'CAUSE6' (index = 6 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 'P4')  


'CAUSE6' (index = 6 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 'P4')  


Props:
'P1':  [ 'CONTAINED1' + COKE ] [ 'CONTAINED2' + 'COCAINE' ] 
'P2':  [ 'ILLEGAL1' + 'COCAINE' ] 
'P3':  [ 'CONTAINED2' + 'COKE-CORP' ] 
'P4':  [ 'MANUFACTURE1' + 'COKE-CORP' ] [ 'MANUFACTURE2' + COKE ] 
Seq. 12    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE     Phase set: 'P1'


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Explanandum * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_0.5 (0.778) 

     Groups: 
     EXPLANANDUM (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DISLIKE (MINISTER, COKE) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 'P2') 'ILLEGAL' ('COCAINE') 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 'P2') 'ILLEGAL' ('COCAINE') 

EFFECT2 (index = 3 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 'P2') 'ILLEGAL' ('COCAINE') 

'EFFECT4' (index = 4 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P3') 'CONTAINED' ('COKE-CORP') 

'CE-5' (index = 5 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT4' (index = 4 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P3') 'CONTAINED' ('COKE-CORP') 

     'CAUSE6' (index = 6 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 'P4') 'MANUFACTURE' ('COKE-CORP', COKE) 


'CAUSE6' (index = 6 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 'P4') 'MANUFACTURE' ('COKE-CORP', COKE) 

EFFECT3 (index = 7 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 'P2') 'ILLEGAL' ('COCAINE') 


Props:
'P1':  [ 'CONTAINED1' + COKE ] [ 'CONTAINED2' + 'COCAINE' ] 
'P2':  [ 'ILLEGAL1' + 'COCAINE' ] 
'P3':  [ 'CONTAINED2' + 'COKE-CORP' ] 
'P4':  [ 'MANUFACTURE1' + 'COKE-CORP' ] [ 'MANUFACTURE2' + COKE ] 

Preds:
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
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE RETRIEVE     Phase set: P1
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE MAP     Phase set: P1
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 4    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 5    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 6    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 7    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 8    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 9    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 10    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 11    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4
Seq. 12    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 13    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 14    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 15    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 16    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 17    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2


* * * Current Mapping Connections From Explanandum to WorkSpace * * *
  Groups:
    From EXPLANANDUM to:    EFFECT1 = 0.879
    From 'CE-1' to:    CE-1 = 0.879
    From 'CAUSE2' to:    CAUSE1 = 0.879
  Props:
    From P1 to:    P3 = 0.982
    From 'P1' to:    P2 = 0.879
    From 'P2' to:    P4 = 0.982
    From 'P3' to:    P1 = 0.990
    From 'P4' to:    P2 = 0.982
  SPs:
    From SP1.1 to:
    From SP1.2 to:    SP3.1 = 0.992
    From 'SP2' to:    SP4.1 = 0.967
    From 'SP3' to:    SP1.1 = 0.990
    From 'SP4' to:    SP1.2 = 0.993
    From 'SP5' to:    SP2.1 = 0.987
  Preds:
    From DISLIKE1 to:
    From DISLIKE2 to:    WAS-IMMORAL1 = 0.970
    From 'CONTAINED1' to:    CONTAINED1 = 0.969
    From 'CONTAINED2' to:    CONTAINED2 = 0.970
    From 'ILLEGAL1' to:    ILLEGAL1 = 0.969
  Objs:
    From MINISTER to:
    From COKE to:    COKE = 0.970
    From 'COCAINE' to:    COCAINE = 0.970



* * * * Inferred Groups and Props in Explanandum * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_0.5 (0.778) 

     Groups: 
     EXPLANANDUM (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DISLIKE (MINISTER, COKE) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P3') 'CONTAINED' (COKE, 'COCAINE') 'P4')  


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P3') 'CONTAINED' (COKE, 'COCAINE') 'P4')  


Props:
'P1':  
'P2':  [ NIL + NIL ] 
'P3':  [ 'CONTAINED1' + COKE ] [ 'CONTAINED2' + 'COCAINE' ] 
'P4':  [ 'ILLEGAL1' + 'COCAINE' ] 


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Explanandum * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_0.5 (0.778) 

     Groups: 
     EXPLANANDUM (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DISLIKE (MINISTER, COKE) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P3') 'CONTAINED' (COKE, 'COCAINE') 'P4')  


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P3') 'CONTAINED' (COKE, 'COCAINE') 'P4')  

EFFECT2 (index = 3 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P3') 'CONTAINED' (COKE, 'COCAINE') 'P4')  


Props:
'P1':  
'P2':  [ NIL + NIL ] 
'P3':  [ 'CONTAINED1' + COKE ] [ 'CONTAINED2' + 'COCAINE' ] 
'P4':  [ 'ILLEGAL1' + 'COCAINE' ] 

Preds:
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


Objs:
'COCAINE':
   ILLEGAL(1.000)
   DRUG(1.000)
   COCAINE(1.000)
   OPIATE(1.000)
   ADDICTIVE(1.000)


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 3 of minister/hard4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE RETRIEVE     Phase set: P1
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE MAP     Phase set: P1
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 4    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 5    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 6    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 7    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 8    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 9    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 10    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 11    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4
Seq. 12    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 13    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 14    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 15    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 16    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 17    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 18    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P3'
Seq. 19    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P4'
Seq. 20    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 21    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 22    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 23    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2


* * * Current Mapping Connections From Explanandum to WorkSpace * * *
  Groups:
    From EXPLANANDUM to:    EFFECT1 = 0.879
    From 'CE-1' to:    CE-1 = 0.879
    From 'CAUSE2' to:    CAUSE1 = 0.879
  Props:
    From P1 to:    P3 = 0.982
    From 'P1' to:    P2 = 0.879
    From 'P2' to:    P1 = 0.990
    From 'P3' to:    P2 = 0.982
  SPs:
    From SP1.1 to:
    From SP1.2 to:    SP3.1 = 0.992
    From 'SP2' to:    SP1.1 = 0.990
    From 'SP3' to:    SP1.2 = 0.993
    From 'SP4' to:    SP2.1 = 0.987
  Preds:
    From DISLIKE1 to:
    From DISLIKE2 to:    WAS-IMMORAL1 = 0.970
    From 'CONTAINED1' to:    CONTAINED1 = 0.969
    From 'CONTAINED2' to:    CONTAINED2 = 0.970
    From 'ILLEGAL1' to:    ILLEGAL1 = 0.969
  Objs:
    From MINISTER to:
    From COKE to:    COKE = 0.970
    From 'COCAINE' to:    COCAINE = 0.970



* * * * Inferred Groups and Props in Explanandum * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_0.5 (0.778) 

     Groups: 
     EXPLANANDUM (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DISLIKE (MINISTER, COKE) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P2') 'CONTAINED' (COKE, 'COCAINE') 'P3')  


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P2') 'CONTAINED' (COKE, 'COCAINE') 'P3')  


Props:
'P1':  
'P2':  [ 'CONTAINED1' + COKE ] [ 'CONTAINED2' + 'COCAINE' ] 
'P3':  [ 'ILLEGAL1' + 'COCAINE' ] 


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Explanandum * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_0.5 (0.778) 

     Groups: 
     EXPLANANDUM (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DISLIKE (MINISTER, COKE) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P2') 'CONTAINED' (COKE, 'COCAINE') 'P3')  


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P2') 'CONTAINED' (COKE, 'COCAINE') 'P3')  

EFFECT2 (index = 3 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'CONTAINED' (COKE, 'COCAINE') 'P3')  


Props:
'P1':  
'P2':  [ 'CONTAINED1' + COKE ] [ 'CONTAINED2' + 'COCAINE' ] 
'P3':  [ 'ILLEGAL1' + 'COCAINE' ] 

Preds:
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


Objs:
'COCAINE':
   ILLEGAL(1.000)
   DRUG(1.000)
   COCAINE(1.000)
   OPIATE(1.000)
   ADDICTIVE(1.000)


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 4 of minister/hard4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE RETRIEVE     Phase set: P1
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE MAP     Phase set: P1
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 4    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 5    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 6    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 7    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 8    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 9    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 10    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 11    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4
Seq. 12    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 13    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 14    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 15    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 16    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 17    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 18    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P3'
Seq. 19    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P4'
Seq. 20    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 21    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 22    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 23    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 24    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 25    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P3'
Seq. 26    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 27    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 28    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 29    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2


* * * Current Mapping Connections From Explanandum to WorkSpace * * *
  Groups:
    From 'CE-1' to:    CE-1 = 0.879
  Props:
    From P1 to:    P1 = 0.990
    From 'P1' to:    P2 = 0.879
    From 'P2' to:    P3 = 0.990
    From 'P3' to:    P2 = 0.990
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From 'SP2' to:    SP3.1 = 0.990
    From 'SP3' to:    SP3.2 = 0.993
    From 'SP4' to:    SP2.1 = 0.990
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
'P1':  
'P2':  [ 'DISAGREE-WITH1' + MINISTER ] [ 'DISAGREE-WITH2' + 'ENTITY' ] 
'P3':  [ 'SUPPORT1' + 'ENTITY' ] [ 'SUPPORT2' + COKE ] 


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
'P1':  
'P2':  [ 'DISAGREE-WITH1' + MINISTER ] [ 'DISAGREE-WITH2' + 'ENTITY' ] 
'P3':  [ 'SUPPORT1' + 'ENTITY' ] [ 'SUPPORT2' + COKE ] 

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
Run 5 of minister/hard4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE INFER RETRIEVE     Phase set: P1
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER MAP     Phase set: P1
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 4    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 5    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 6    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 7    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 8    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 9    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 10    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 11    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4
Seq. 12    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 13    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 14    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 15    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 16    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 17    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 18    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P3'
Seq. 19    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P4'
Seq. 20    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 21    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 22    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 23    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 24    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 25    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P3'
Seq. 26    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 27    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 28    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 29    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 30    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 31    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 32    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4


* * * Current Mapping Connections From Explanandum to WorkSpace * * *
  Groups:
    From EXPLANANDUM to:    EFFECT1 = 0.879
    From 'CE-1' to:    CE-1 = 0.879
    From 'CAUSE2' to:    CAUSE1 = 0.879
  Props:
    From P1 to:    P5 = 0.990
    From 'P1' to:    P2 = 0.982
    From 'P2' to:    P4 = 0.982
  SPs:
    From SP1.1 to:    SP5.1 = 0.993
    From SP1.2 to:    SP5.2 = 0.993
    From 'SP2' to:    SP2.1 = 0.967
    From 'SP3' to:    SP4.1 = 0.987
  Preds:
    From DISLIKE1 to:    DISLIKE1 = 0.970
    From DISLIKE2 to:    DISLIKE2 = 0.970
    From 'IMMORAL1' to:    IMMORAL1 = 0.969
  Objs:
    From MINISTER to:    MINISTER = 0.970
    From COKE to:    IMMORAL-STUFF = 0.970



* * * * Inferred Groups and Props in Explanandum * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 

     Groups: 
     EXPLANANDUM (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DISLIKE (MINISTER, COKE) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P2')  


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P2')  


Props:
'P1':  [ NIL + NIL ] 
'P2':  [ 'IMMORAL1' + COKE ] 


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



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
          Props: 'P2')  


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P2')  

EFFECT2 (index = 3 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2')  


Props:
'P1':  [ NIL + NIL ] 
'P2':  [ 'IMMORAL1' + COKE ] 

Preds:
'IMMORAL1':
   IMMORAL(1.000)
   ETHICS(1.000)
   EVIL(1.000)
   NEGATIVE(1.000)
   MORALS(1.000)


Objs:

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 6 of minister/hard4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE RETRIEVE     Phase set: P1
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE MAP     Phase set: P1
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 4    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 5    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 6    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 7    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 8    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 9    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 10    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 11    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4
Seq. 12    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 13    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 14    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 15    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 16    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 17    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 18    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P3'
Seq. 19    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P4'
Seq. 20    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 21    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 22    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 23    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 24    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 25    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P3'
Seq. 26    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 27    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 28    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 29    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 30    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 31    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 32    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4
Seq. 33    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 34    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 35    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 36    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4


* * * Current Mapping Connections From Explanandum to WorkSpace * * *
  Groups:
    From EXPLANANDUM to:    EFFECT1 = 0.879
    From 'CE-1' to:    CE-1 = 0.879
    From 'CAUSE2' to:    CAUSE1 = 0.879
  Props:
    From P1 to:    P5 = 0.990
    From 'P1' to:    P4 = 0.879
    From 'P2' to:    P4 = 0.982
  SPs:
    From SP1.1 to:    SP5.1 = 0.993
    From SP1.2 to:    SP5.2 = 0.993
    From 'SP2' to:    SP4.1 = 0.987
  Preds:
    From DISLIKE1 to:    DISLIKE1 = 0.970
    From DISLIKE2 to:    DISLIKE2 = 0.970
    From 'IMMORAL1' to:    IMMORAL1 = 0.969
  Objs:
    From MINISTER to:    MINISTER = 0.970
    From COKE to:    IMMORAL-STUFF = 0.970



* * * * Inferred Groups and Props in Explanandum * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 

     Groups: 
     EXPLANANDUM (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DISLIKE (MINISTER, COKE) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P2')  


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P2')  


Props:
'P1':  
'P2':  [ 'IMMORAL1' + COKE ] 


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



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
          Props: 'P2')  


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P2')  

EFFECT2 (index = 3 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2')  


Props:
'P1':  
'P2':  [ 'IMMORAL1' + COKE ] 

Preds:
'IMMORAL1':
   IMMORAL(1.000)
   ETHICS(1.000)
   EVIL(1.000)
   NEGATIVE(1.000)
   MORALS(1.000)


Objs:

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 7 of minister/hard4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE RETRIEVE     Phase set: P1
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE MAP     Phase set: P1
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 4    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 5    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 6    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 7    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 8    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 9    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 10    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 11    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4
Seq. 12    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 13    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 14    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 15    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 16    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 17    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 18    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P3'
Seq. 19    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P4'
Seq. 20    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 21    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 22    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 23    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 24    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 25    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P3'
Seq. 26    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 27    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 28    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 29    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 30    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 31    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 32    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4
Seq. 33    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 34    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 35    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 36    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4
Seq. 37    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 38    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 39    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 40    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 41    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4


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
Run 8 of minister/hard4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE INFER RETRIEVE     Phase set: P1
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER MAP     Phase set: P1
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 4    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 5    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 6    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 7    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 8    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 9    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 10    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 11    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4
Seq. 12    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 13    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 14    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 15    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 16    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 17    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 18    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P3'
Seq. 19    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P4'
Seq. 20    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 21    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 22    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 23    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 24    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 25    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P3'
Seq. 26    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 27    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 28    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 29    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 30    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 31    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 32    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4
Seq. 33    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 34    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 35    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 36    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4
Seq. 37    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 38    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 39    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 40    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 41    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4
Seq. 42    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 43    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 44    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 45    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2


* * * Current Mapping Connections From Explanandum to WorkSpace * * *
  Groups:
    From 'CE-1' to:    CE-1 = 0.879
  Props:
    From P1 to:    P1 = 0.990
    From 'P1' to:    P4 = 0.879
    From 'P2' to:    P4 = 0.982
    From 'P3' to:    P3 = 0.990
    From 'P4' to:    P2 = 0.990
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From 'SP2' to:    SP4.1 = 0.967
    From 'SP3' to:    SP3.1 = 0.990
    From 'SP4' to:    SP3.2 = 0.993
    From 'SP5' to:    SP2.1 = 0.990
    From 'SP6' to:    SP2.2 = 0.990
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
'P1':  
'P2':  [ NIL + NIL ] 
'P3':  [ 'DISAGREE-WITH1' + MINISTER ] [ 'DISAGREE-WITH2' + 'ENTITY' ] 
'P4':  [ 'SUPPORT1' + 'ENTITY' ] [ 'SUPPORT2' + COKE ] 


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
'P1':  
'P2':  [ NIL + NIL ] 
'P3':  [ 'DISAGREE-WITH1' + MINISTER ] [ 'DISAGREE-WITH2' + 'ENTITY' ] 
'P4':  [ 'SUPPORT1' + 'ENTITY' ] [ 'SUPPORT2' + COKE ] 

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
Run 9 of minister/hard4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE INFER RETRIEVE     Phase set: P1
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER MAP     Phase set: P1
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 4    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 5    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 6    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 7    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 8    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 9    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 10    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 11    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4
Seq. 12    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 13    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 14    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 15    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 16    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 17    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 18    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P3'
Seq. 19    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P4'
Seq. 20    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 21    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 22    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 23    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 24    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 25    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P3'
Seq. 26    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 27    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 28    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 29    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 30    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 31    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 32    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4
Seq. 33    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 34    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 35    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 36    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4
Seq. 37    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 38    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 39    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 40    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 41    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4
Seq. 42    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 43    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 44    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 45    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 46    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 47    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 48    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 49    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4


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
Run 10 of minister/hard4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE INFER RETRIEVE     Phase set: P1
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER MAP     Phase set: P1
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 4    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 5    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 6    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 7    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 8    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 9    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 10    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 11    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4
Seq. 12    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P1'
Seq. 13    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 14    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 15    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 16    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 17    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 18    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P3'
Seq. 19    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P4'
Seq. 20    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 21    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 22    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 23    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 24    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 25    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P3'
Seq. 26    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 27    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 28    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 29    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 30    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 31    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 32    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4
Seq. 33    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 34    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 35    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 36    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4
Seq. 37    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: 'P2'
Seq. 38    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 39    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 40    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 41    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4
Seq. 42    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 43    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 44    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 45    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P2
Seq. 46    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 47    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 48    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P3
Seq. 49    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4
Seq. 50    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P1
Seq. 51    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P5
Seq. 52    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN RETRIEVE INFER     Phase set: P4


* * * Current Mapping Connections From Explanandum to WorkSpace * * *
  Groups:
    From EXPLANANDUM to:    EFFECT1 = 0.879
    From 'CE-1' to:    CE-1 = 0.879
    From 'CAUSE2' to:    CAUSE1 = 0.879
  Props:
    From P1 to:    P5 = 0.990
    From 'P1' to:    P2 = 0.879
    From 'P2' to:    P4 = 0.982
    From 'P3' to:    P4 = 0.982
  SPs:
    From SP1.1 to:    SP5.1 = 0.993
    From SP1.2 to:    SP5.2 = 0.993
    From 'SP2' to:    SP4.1 = 0.967
    From 'SP3' to:    SP4.1 = 0.987
  Preds:
    From DISLIKE1 to:    DISLIKE1 = 0.970
    From DISLIKE2 to:    DISLIKE2 = 0.970
    From 'IMMORAL1' to:    IMMORAL1 = 0.969
  Objs:
    From MINISTER to:    MINISTER = 0.970
    From COKE to:    IMMORAL-STUFF = 0.970



* * * * Inferred Groups and Props in Explanandum * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 

     Groups: 
     EXPLANANDUM (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DISLIKE (MINISTER, COKE) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P3')  


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P3')  


Props:
'P1':  
'P2':  [ NIL + NIL ] 
'P3':  [ 'IMMORAL1' + COKE ] 


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



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
          Props: 'P3')  


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P3')  

EFFECT2 (index = 3 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P3')  


Props:
'P1':  
'P2':  [ NIL + NIL ] 
'P3':  [ 'IMMORAL1' + COKE ] 

Preds:
'IMMORAL1':
   IMMORAL(1.000)
   ETHICS(1.000)
   EVIL(1.000)
   NEGATIVE(1.000)
   MORALS(1.000)


Objs:
