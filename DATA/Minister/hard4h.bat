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
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE     Phase set: P1:DISLIKE (MINISTER, COKE)
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DISLIKE (MINISTER, COKE)
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:WAS-IMMORAL (COKE)
Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:CONTAINED (COKE, COCAINE)
Seq. 4    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:ILLEGAL (COCAINE)
Seq. 5    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE     Phase set: 'P1':'CONTAINED' (COKE, 'COCAINE')
Seq. 6    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: 'P1':'CONTAINED' (COKE, 'COCAINE')
Seq. 7    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:WAS-IMMORAL (COKE-CORP)
Seq. 8    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:WAS-IMMORAL (COKE)
Seq. 9    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:MANUFACTURE (COKE-CORP, COKE)
Seq. 10    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE     Phase set: 'P2':'ILLEGAL' ('COCAINE')


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
     Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 

EFFECT3 (index = 4 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'ILLEGAL' ('COCAINE') 

'EFFECT5' (index = 5 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P3') 'CONTAINED' ('COKE-CORP') 

'CE-6' (index = 6 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT5' (index = 5 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P3') 'CONTAINED' ('COKE-CORP') 

     'CAUSE7' (index = 7 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 'P4') 'MANUFACTURE' ('COKE-CORP', COKE) 


'CAUSE7' (index = 7 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 'P4') 'MANUFACTURE' ('COKE-CORP', COKE) 

EFFECT4 (index = 8 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 

EFFECT5 (index = 9 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'ILLEGAL' ('COCAINE') 


Props:
'P1':  [ 'CONTAINED1' + COKE ] [ 'CONTAINED2' + 'COCAINE' ] 
'P2':  [ 'ILLEGAL1' + 'COCAINE' ] 
'P3':  [ 'CONTAINED1' + 'COKE-CORP' ] 
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
Run 2 of minister/hard4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE     Phase set: P1:DISLIKE (MINISTER, COKE)
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DISLIKE (MINISTER, COKE)
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:WAS-IMMORAL (COKE)
Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:CONTAINED (COKE, COCAINE)
Seq. 4    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:ILLEGAL (COCAINE)
Seq. 5    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE     Phase set: 'P2':
Seq. 6    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: 'P2':'ILLEGAL' ('COCAINE')
Seq. 7    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:DISLIKE (MINISTER, IMMORAL-STUFF)
Seq. 8    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:IMMORAL (IMMORAL-STUFF)
Seq. 9    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE     Phase set: 'P1':'CONTAINED' (COKE, 'COCAINE')
Seq. 10    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: 'P1':'CONTAINED' (COKE, 'COCAINE')
Seq. 11    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:WAS-IMMORAL (COKE-CORP)
Seq. 12    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:WAS-IMMORAL (COKE)
Seq. 13    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:MANUFACTURE (COKE-CORP, COKE)
Seq. 14    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE     Phase set: 'P2':'ILLEGAL' ('COCAINE')


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
     Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 

EFFECT3 (index = 4 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'ILLEGAL' ('COCAINE') 

'EFFECT5' (index = 5 level =0):  
     Semantics: EFFECT (0.690) 
     Props: 'P3') 'DISLIKE' ('MINISTER', 'COCAINE') 

'CE-6' (index = 6 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 

     Groups: 
     'EFFECT5' (index = 5 level =0):  
          Semantics: EFFECT (0.690) 
          Props: 'P3') 'DISLIKE' ('MINISTER', 'COCAINE') 

     'CAUSE7' (index = 7 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P2') 'ILLEGAL' ('COCAINE') 


'CAUSE7' (index = 7 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P2') 'ILLEGAL' ('COCAINE') 

EFFECT4 (index = 8 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 

EFFECT5 (index = 9 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'ILLEGAL' ('COCAINE') 

'EFFECT10' (index = 10 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P4') 'CONTAINED' ('COKE-CORP') 

'CE-11' (index = 11 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT10' (index = 10 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P4') 'CONTAINED' ('COKE-CORP') 

     'CAUSE12' (index = 12 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 'P5') 'MANUFACTURE' ('COKE-CORP', COKE) 


'CAUSE12' (index = 12 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 'P5') 'MANUFACTURE' ('COKE-CORP', COKE) 

EFFECT6 (index = 13 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 

EFFECT7 (index = 14 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'ILLEGAL' ('COCAINE') 


Props:
'P1':  [ 'CONTAINED1' + COKE ] [ 'CONTAINED2' + 'COCAINE' ] 
'P2':  [ 'ILLEGAL1' + 'COCAINE' ] 
'P3':  [ 'DISLIKE1' + 'MINISTER' ] [ 'DISLIKE2' + 'COCAINE' ] 
'P4':  [ 'CONTAINED1' + 'COKE-CORP' ] 
'P5':  [ 'MANUFACTURE1' + 'COKE-CORP' ] [ 'MANUFACTURE2' + COKE ] 

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

'DISLIKE1':
   DISLIKE1(1.000)
   DISPOSITION1(1.000)

'DISLIKE2':
   DISLIKE2(1.000)
   DISPOSITION2(1.000)

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

'MINISTER':
   MORAL(1.000)
   PERSON(1.000)
   RELIGIOUS(1.000)
   MINISTER(1.000)

'COKE-CORP':
   COKE(1.000)
   MANUFACTURER(1.000)
   COMPANY(1.000)
   MAKE(1.000)
   COKE-CORP(1.000)

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
Run 3 of minister/hard4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE     Phase set: P1:DISLIKE (MINISTER, COKE)
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DISLIKE (MINISTER, COKE)
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:WAS-IMMORAL (COKE-CORP)
Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:WAS-IMMORAL (COKE)
Seq. 4    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:MANUFACTURE (COKE-CORP, COKE)


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
Run 4 of minister/hard4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE     Phase set: P1:DISLIKE (MINISTER, COKE)
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DISLIKE (MINISTER, COKE)
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:DISAGREE-WITH (PERSON, ENTITY)
Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:OPPOSE (PERSON, A-CAUSE)
Seq. 4    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:SUPPORT (ENTITY, A-CAUSE)


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
Run 5 of minister/hard4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE     Phase set: P1:DISLIKE (MINISTER, COKE)
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DISLIKE (MINISTER, COKE)
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:DISAGREE-WITH (PERSON, ENTITY)
Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:OPPOSE (PERSON, A-CAUSE)
Seq. 4    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:SUPPORT (ENTITY, A-CAUSE)


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
Run 6 of minister/hard4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE     Phase set: P1:DISLIKE (MINISTER, COKE)
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DISLIKE (MINISTER, COKE)
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:DISAGREE-WITH (PERSON, ENTITY)
Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:OPPOSE (PERSON, A-CAUSE)
Seq. 4    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:SUPPORT (ENTITY, A-CAUSE)


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
Run 7 of minister/hard4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE     Phase set: P1:DISLIKE (MINISTER, COKE)
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DISLIKE (MINISTER, COKE)
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:WAS-IMMORAL (COKE)
Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:CONTAINED (COKE, COCAINE)
Seq. 4    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:ILLEGAL (COCAINE)
Seq. 5    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE     Phase set: 'P1':'CONTAINED' (COKE, 'COCAINE')
Seq. 6    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: 'P1':'CONTAINED' (COKE, 'COCAINE')
Seq. 7    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:WAS-IMMORAL (COKE-CORP)
Seq. 8    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:WAS-IMMORAL (COKE)
Seq. 9    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:MANUFACTURE (COKE-CORP, COKE)
Seq. 10    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE     Phase set: 'P2':'ILLEGAL' ('COCAINE')


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
     Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 

EFFECT3 (index = 4 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'ILLEGAL' ('COCAINE') 

'EFFECT5' (index = 5 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P3') 'CONTAINED' ('COKE-CORP') 

'CE-6' (index = 6 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT5' (index = 5 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P3') 'CONTAINED' ('COKE-CORP') 

     'CAUSE7' (index = 7 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 'P4') 'MANUFACTURE' ('COKE-CORP', COKE) 


'CAUSE7' (index = 7 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 'P4') 'MANUFACTURE' ('COKE-CORP', COKE) 

EFFECT4 (index = 8 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'CONTAINED' (COKE, 'COCAINE') 

EFFECT5 (index = 9 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'ILLEGAL' ('COCAINE') 


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
Run 8 of minister/hard4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE     Phase set: P1:DISLIKE (MINISTER, COKE)
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DISLIKE (MINISTER, COKE)
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:DISLIKE (MINISTER, IMMORAL-STUFF)
Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:IMMORAL (IMMORAL-STUFF)
Seq. 4    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE     Phase set: 'P1':
Seq. 5    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: 'P1':'IMMORAL' (COKE)
Seq. 6    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:WAS-IMMORAL (COKE-CORP)
Seq. 7    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:WAS-IMMORAL (COKE)
Seq. 8    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:MANUFACTURE (COKE-CORP, COKE)
Seq. 9    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE     Phase set: 'P1':'IMMORAL' (COKE)
Seq. 10    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: 'P1':'IMMORAL' (COKE)
Seq. 11    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:WAS-IMMORAL (COKE)
Seq. 12    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:CONTAINED (COKE, COCAINE)
Seq. 13    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:ILLEGAL (COCAINE)
Seq. 14    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE     Phase set: 'P1':'IMMORAL' (COKE)


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
          Props: 'P1') 'IMMORAL' (COKE) 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P1') 'IMMORAL' (COKE) 

EFFECT2 (index = 3 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'IMMORAL' (COKE) 

'EFFECT4' (index = 4 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P2') 'IMMORAL' ('COKE-CORP') 

'CE-5' (index = 5 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT4' (index = 4 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P2') 'IMMORAL' ('COKE-CORP') 

     'CAUSE6' (index = 6 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P1') 'IMMORAL' (COKE) 'P3') 'MANUFACTURE' ('COKE-CORP', COKE) 


'CAUSE6' (index = 6 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P1') 'IMMORAL' (COKE) 'P3') 'MANUFACTURE' ('COKE-CORP', COKE) 

EFFECT3 (index = 7 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'IMMORAL' (COKE) 

'CE-8' (index = 8 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_0.5 (0.778) 

     Groups: 
     EFFECT3 (index = 7 level =0):  
          Semantics: EFFECT (1.000) 
          Props: 'P1') 'IMMORAL' (COKE) 

     'CAUSE9' (index = 9 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P4') 'CONTAINED' (COKE, 'COCAINE') 'P5') 'ILLEGAL' ('COCAINE') 


'CAUSE9' (index = 9 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P4') 'CONTAINED' (COKE, 'COCAINE') 'P5') 'ILLEGAL' ('COCAINE') 

EFFECT4 (index = 10 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'IMMORAL' (COKE) 


Props:
'P1':  [ 'IMMORAL1' + COKE ] 
'P2':  [ 'IMMORAL1' + 'COKE-CORP' ] 
'P3':  [ 'MANUFACTURE1' + 'COKE-CORP' ] [ 'MANUFACTURE2' + COKE ] 
'P4':  [ 'CONTAINED1' + COKE ] [ 'CONTAINED2' + 'COCAINE' ] 
'P5':  [ 'ILLEGAL1' + 'COCAINE' ] 

Preds:
'IMMORAL1':
   IMMORAL(1.000)
   ETHICS(1.000)
   EVIL(1.000)
   NEGATIVE(1.000)
   MORALS(1.000)

'MANUFACTURE1':
   MAKE1(1.000)
   PRODUCE1(1.000)
   MANUFACTURE1(1.000)

'MANUFACTURE2':
   MAKE2(1.000)
   PRODUCE2(1.000)
   MANUFACTURE2(1.000)

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
'COKE-CORP':
   COKE(1.000)
   MANUFACTURER(1.000)
   COMPANY(1.000)
   MAKE(1.000)
   COKE-CORP(1.000)

'COCAINE':
   ILLEGAL(1.000)
   DRUG(1.000)
   COCAINE(1.000)
   OPIATE(1.000)
   ADDICTIVE(1.000)

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
Run 9 of minister/hard4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE     Phase set: P1:DISLIKE (MINISTER, COKE)
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DISLIKE (MINISTER, COKE)
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:DISLIKE (MINISTER, IMMORAL-STUFF)
Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:IMMORAL (IMMORAL-STUFF)
Seq. 4    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE     Phase set: 'P1':
Seq. 5    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: 'P1':'IMMORAL' (COKE)
Seq. 6    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:WAS-IMMORAL (COKE)
Seq. 7    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:CONTAINED (COKE, COCAINE)
Seq. 8    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:ILLEGAL (COCAINE)
Seq. 9    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE     Phase set: 'P1':'IMMORAL' (COKE)
Seq. 10    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: 'P1':'IMMORAL' (COKE)
Seq. 11    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: 'P2':'CONTAINED' (COKE, 'COCAINE')
Seq. 12    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: 'P3':'ILLEGAL' ('COCAINE')
Seq. 13    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:WAS-IMMORAL (COKE-CORP)
Seq. 14    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:WAS-IMMORAL (COKE)
Seq. 15    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:MANUFACTURE (COKE-CORP, COKE)
Seq. 16    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:WAS-IMMORAL (COKE-CORP)
Seq. 17    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:WAS-IMMORAL (COKE)
Seq. 18    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:MANUFACTURE (COKE-CORP, COKE)
Seq. 19    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:WAS-IMMORAL (COKE-CORP)
Seq. 20    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:WAS-IMMORAL (COKE)
Seq. 21    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:MANUFACTURE (COKE-CORP, COKE)
Seq. 22    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE     Phase set: 'P1':'IMMORAL' (COKE)


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
     Semantics: EFFECT (0.778) 
     Props: 'P4') 'IMMORAL' ('COKE-CORP') 

'CE-8' (index = 8 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT7' (index = 7 level =0):  
          Semantics: EFFECT (0.778) 
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
Run 10 of minister/hard4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Explanandum    Recip :    Fire control:groups    Goals: EXPLAIN RETRIEVE     Phase set: P1:DISLIKE (MINISTER, COKE)
Seq. 1    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DISLIKE (MINISTER, COKE)
Seq. 2    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:DISLIKE (MINISTER, IMMORAL-STUFF)
Seq. 3    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:IMMORAL (IMMORAL-STUFF)
Seq. 4    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE     Phase set: 'P1':
Seq. 5    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: 'P1':'IMMORAL' (COKE)
Seq. 6    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:WAS-IMMORAL (COKE-CORP)
Seq. 7    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:WAS-IMMORAL (COKE)
Seq. 8    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:MANUFACTURE (COKE-CORP, COKE)
Seq. 9    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE     Phase set: 'P1':'IMMORAL' (COKE)
Seq. 10    Driver:Explanandum    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: 'P1':'IMMORAL' (COKE)
Seq. 11    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:WAS-IMMORAL (COKE)
Seq. 12    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:CONTAINED (COKE, COCAINE)
Seq. 13    Driver:WorkSpace    Recip : Explanandum    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:ILLEGAL (COCAINE)
Seq. 14    Driver:Explanandum    Recip :    Fire control:groups-d    Goals: EXPLAIN RETRIEVE     Phase set: 'P1':'IMMORAL' (COKE)


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
          Props: 'P1') 'IMMORAL' (COKE) 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P1') 'IMMORAL' (COKE) 

EFFECT2 (index = 3 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'IMMORAL' (COKE) 

'EFFECT4' (index = 4 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P2') 'IMMORAL' ('COKE-CORP') 

'CE-5' (index = 5 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT4' (index = 4 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P2') 'IMMORAL' ('COKE-CORP') 

     'CAUSE6' (index = 6 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P1') 'IMMORAL' (COKE) 'P3') 'MANUFACTURE' ('COKE-CORP', COKE) 


'CAUSE6' (index = 6 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P1') 'IMMORAL' (COKE) 'P3') 'MANUFACTURE' ('COKE-CORP', COKE) 

EFFECT3 (index = 7 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'IMMORAL' (COKE) 

'CE-8' (index = 8 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_0.5 (0.778) 

     Groups: 
     EFFECT3 (index = 7 level =0):  
          Semantics: EFFECT (1.000) 
          Props: 'P1') 'IMMORAL' (COKE) 

     'CAUSE9' (index = 9 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P4') 'CONTAINED' (COKE, 'COCAINE') 'P5') 'ILLEGAL' ('COCAINE') 


'CAUSE9' (index = 9 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P4') 'CONTAINED' (COKE, 'COCAINE') 'P5') 'ILLEGAL' ('COCAINE') 

EFFECT4 (index = 10 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'IMMORAL' (COKE) 


Props:
'P1':  [ 'IMMORAL1' + COKE ] 
'P2':  [ 'IMMORAL1' + 'COKE-CORP' ] 
'P3':  [ 'MANUFACTURE1' + 'COKE-CORP' ] [ 'MANUFACTURE2' + COKE ] 
'P4':  [ 'CONTAINED1' + COKE ] [ 'CONTAINED2' + 'COCAINE' ] 
'P5':  [ 'ILLEGAL1' + 'COCAINE' ] 

Preds:
'IMMORAL1':
   IMMORAL(1.000)
   ETHICS(1.000)
   EVIL(1.000)
   NEGATIVE(1.000)
   MORALS(1.000)

'MANUFACTURE1':
   MAKE1(1.000)
   PRODUCE1(1.000)
   MANUFACTURE1(1.000)

'MANUFACTURE2':
   MAKE2(1.000)
   PRODUCE2(1.000)
   MANUFACTURE2(1.000)

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
'COKE-CORP':
   COKE(1.000)
   MANUFACTURER(1.000)
   COMPANY(1.000)
   MAKE(1.000)
   COKE-CORP(1.000)

'COCAINE':
   ILLEGAL(1.000)
   DRUG(1.000)
   COCAINE(1.000)
   OPIATE(1.000)
   ADDICTIVE(1.000)

