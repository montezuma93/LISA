Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_mary
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
Run 1 of az/oj_easy_mary
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Mary    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (MARY, OJ)
Seq. 1    Driver:Mary    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (MARY, OJ)
Seq. 2    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:DRINK (PERSON, OJ)
Seq. 3    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:PART_OF (OJ, BREAKFAST)
Seq. 4    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:HAS (OJ, VITC)
Seq. 5    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:DELICIOUS (OJ)
Seq. 6    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:SMELLS (OJ, REFRESHING)
Seq. 7    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P6:ALERTING (OJ)
Seq. 8    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P7:EXTRINSIC_CAUSE (OJ)
Seq. 9    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P9:DRINK (LARRY, OJ)
Seq. 10    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P8:HAS (LARRY, FETISH)
Seq. 11    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P11:DRINK (JOAN, OJ)
Seq. 12    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P10:ISA (JOAN, MECHANIC)
Seq. 13    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P13:DRINK (SALLY, OJ)
Seq. 14    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P12:ISA (SALLY, DIVORCEE)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Mary * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 


'CE-2' (index = 2 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 


'CE-3' (index = 3 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 


'CE-4' (index = 4 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (MARY, OJ) 

     'CAUSE5' (index = 5 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P12')  


'CAUSE5' (index = 5 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P12')  

EFFECT1 (index = 6 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P12')  


Props:
'P1':  [ DRINK1 + 'PERSON' ] [ DRINK2 + OJ ] 
'P2':  [ 'PART_OF1' + OJ ] [ 'PART_OF2' + 'BREAKFAST' ] 
'P3':  [ 'HAS1' + OJ ] [ 'HAS2' + 'VITC' ] 
'P4':  [ 'DELICIOUS1' + OJ ] 
'P5':  [ 'SMELLS1' + OJ ] [ 'SMELLS2' + 'REFRESHING' ] 
'P6':  [ 'ALERTING1' + OJ ] 
'P7':  [ 'EXTRINSIC_CAUSE1' + OJ ] 
'P8':  [ DRINK1 + 'LARRY' ] [ DRINK2 + OJ ] 
'P9':  [ 'HAS1' + 'LARRY' ] [ 'HAS2' + 'FETISH' ] 
'P10':  [ DRINK1 + 'JOAN' ] [ DRINK2 + OJ ] 
'P11':  [ 'ISA1' + 'JOAN' ] [ 'ISA2' + 'MECHANIC' ] 
'P12':  [ 'ISA1' + MARY ] [ 'ISA2' + 'DIVORCEE' ] 

Preds:
'PART_OF1':
   PART1(1.000)
   CONSTITUENT1(1.000)
   COMPONENT1(1.000)
   ELEMENT1(1.000)
   CONTENT1(1.000)

'PART_OF2':
   PART2(1.000)
   CONSTITUENT2(1.000)
   COMPONENT2(1.000)
   ELEMENT2(1.000)
   CONTENT2(1.000)

'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)

'DELICIOUS1':
   TASTE1(1.000)
   GOOD1(1.000)
   YUM1(1.000)
   DELICIOUS1(1.000)
   TASTY1(1.000)
   REFRESHING1(1.000)
   TANGY1(1.000)
   CITRUS1(1.000)
   TART1(1.000)

'SMELLS1':
   ODOR1(1.000)
   SCENT1(1.000)
   SMELL1(1.000)
   OLFACTION1(1.000)
   AROMA1(1.000)
   FRAGRANCE1(1.000)

'SMELLS2':
   ODOR2(1.000)
   SCENT2(1.000)
   SMELL2(1.000)
   OLFACTION2(1.000)
   AROMA2(1.000)
   FRAGRANCE2(1.000)

'ALERTING1':
   AWAKE1(1.000)
        MORNING1(0.500)
        SLEEPY1(0.500)
        WAKES1(0.500)

'EXTRINSIC_CAUSE1':
   HISTORY1(1.000)
        CROPS1(0.500)
        FLORIDA1(0.500)
        GROWERS1(0.500)

'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'PERSON':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)

'BREAKFAST':
   BREAKFAST(1.000)
   MORNING(1.000)
   FOOD(1.000)
   MEAL(1.000)

'VITC':
   BREAKFAST(1.000)
   HEALTH(1.000)
   VITAMIN(1.000)
   OJ(1.000)
   IMMUNE(1.000)

'REFRESHING':
   STATE(1.000)
   FRESH(1.000)
   YUM(1.000)
   ALERT(1.000)
   REFRESHING(1.000)

'LARRY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   MALE(1.000)
   BANKER(1.000)
   DESERVES_DEATH(1.000)
   1%(1.000)
   LARRY(1.000)

'FETISH':
        DESIRE(0.500)
   UNUSUAL(1.000)
        FREAKY(0.500)
        SEXUAL(0.500)
        STRONG(0.500)
        COMPULSION(0.500)

'JOAN':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   OLD(1.000)
   NICE(1.000)
   MOM(1.000)
   MECHANIC(1.000)
   JOAN(1.000)

'MECHANIC':
   HUMAN(1.000)
   PERSON(1.000)
   PROFESSION(1.000)
   CARS(1.000)
   MACHINES(1.000)
   SKILL(1.000)
   TALENT(1.000)
   BLUE_COLLAR(1.000)

'DIVORCEE':
   HUMAN(1.000)
   PERSON(1.000)
   MARRIED_ONCE(1.000)
   DIVORCED(1.000)
   SINGLE(1.000)
   ANGRY(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_mary
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
Run 2 of az/oj_easy_mary
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Mary    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (MARY, OJ)
Seq. 1    Driver:Mary    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (MARY, OJ)
Seq. 2    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:DRINK (PERSON, OJ)
Seq. 3    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:PART_OF (OJ, BREAKFAST)
Seq. 4    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:HAS (OJ, VITC)
Seq. 5    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:DELICIOUS (OJ)
Seq. 6    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:SMELLS (OJ, REFRESHING)
Seq. 7    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P6:ALERTING (OJ)
Seq. 8    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P7:EXTRINSIC_CAUSE (OJ)
Seq. 9    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P9:DRINK (LARRY, OJ)
Seq. 10    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P8:HAS (LARRY, FETISH)
Seq. 11    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P11:DRINK (JOAN, OJ)
Seq. 12    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P10:ISA (JOAN, MECHANIC)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Mary * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (MARY, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 

'EFFECT3' (index = 3 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P7') DRINK ('LARRY', OJ) 

'CE-4' (index = 4 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT3' (index = 3 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P7') DRINK ('LARRY', OJ) 

     'CAUSE5' (index = 5 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P8') 'HAS' ('LARRY', 'FETISH') 


'CAUSE5' (index = 5 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P8') 'HAS' ('LARRY', 'FETISH') 

'EFFECT6' (index = 6 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P9') DRINK ('JOAN', OJ) 

'CE-7' (index = 7 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT6' (index = 6 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P9') DRINK ('JOAN', OJ) 

     'CAUSE8' (index = 8 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P10')  


'CAUSE8' (index = 8 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P10')  

EFFECT1 (index = 9 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 

EFFECT2 (index = 10 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'HAS' (OJ, 'VITC') 

EFFECT3 (index = 11 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P3') 'DELICIOUS' (OJ) 

EFFECT4 (index = 12 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P4') 'SMELLS' (OJ, 'REFRESHING') 

EFFECT5 (index = 13 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P5') 'ALERTING' (OJ) 

EFFECT6 (index = 14 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P6') 'EXTRINSIC_CAUSE' (OJ) 


Props:
'P1':  [ 'PART_OF1' + OJ ] [ 'PART_OF2' + 'BREAKFAST' ] 
'P2':  [ 'HAS1' + OJ ] [ 'HAS2' + 'VITC' ] 
'P3':  [ 'DELICIOUS1' + OJ ] 
'P4':  [ 'SMELLS1' + OJ ] [ 'SMELLS2' + 'REFRESHING' ] 
'P5':  [ 'ALERTING1' + OJ ] 
'P6':  [ 'EXTRINSIC_CAUSE1' + OJ ] 
'P7':  [ DRINK1 + 'LARRY' ] [ DRINK2 + OJ ] 
'P8':  [ 'HAS1' + 'LARRY' ] [ 'HAS2' + 'FETISH' ] 
'P9':  [ DRINK1 + 'JOAN' ] [ DRINK2 + OJ ] 
'P10':  [ 'ISA1' + 'JOAN' ] [ 'ISA2' + 'MECHANIC' ] 

Preds:
'PART_OF1':
   PART1(1.000)
   CONSTITUENT1(1.000)
   COMPONENT1(1.000)
   ELEMENT1(1.000)
   CONTENT1(1.000)

'PART_OF2':
   PART2(1.000)
   CONSTITUENT2(1.000)
   COMPONENT2(1.000)
   ELEMENT2(1.000)
   CONTENT2(1.000)

'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)

'DELICIOUS1':
   TASTE1(1.000)
   GOOD1(1.000)
   YUM1(1.000)
   DELICIOUS1(1.000)
   TASTY1(1.000)
   REFRESHING1(1.000)
   TANGY1(1.000)
   CITRUS1(1.000)
   TART1(1.000)

'SMELLS1':
   ODOR1(1.000)
   SCENT1(1.000)
   SMELL1(1.000)
   OLFACTION1(1.000)
   AROMA1(1.000)
   FRAGRANCE1(1.000)

'SMELLS2':
   ODOR2(1.000)
   SCENT2(1.000)
   SMELL2(1.000)
   OLFACTION2(1.000)
   AROMA2(1.000)
   FRAGRANCE2(1.000)

'ALERTING1':
   AWAKE1(1.000)
        MORNING1(0.500)
        SLEEPY1(0.500)
        WAKES1(0.500)

'EXTRINSIC_CAUSE1':
   HISTORY1(1.000)
        CROPS1(0.500)
        FLORIDA1(0.500)
        GROWERS1(0.500)

'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'BREAKFAST':
   BREAKFAST(1.000)
   MORNING(1.000)
   FOOD(1.000)
   MEAL(1.000)

'VITC':
   BREAKFAST(1.000)
   HEALTH(1.000)
   VITAMIN(1.000)
   OJ(1.000)
   IMMUNE(1.000)

'REFRESHING':
   STATE(1.000)
   FRESH(1.000)
   YUM(1.000)
   ALERT(1.000)
   REFRESHING(1.000)

'LARRY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   MALE(1.000)
   BANKER(1.000)
   DESERVES_DEATH(1.000)
   1%(1.000)
   LARRY(1.000)

'FETISH':
        DESIRE(0.500)
   UNUSUAL(1.000)
        FREAKY(0.500)
        SEXUAL(0.500)
        STRONG(0.500)
        COMPULSION(0.500)

'JOAN':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   OLD(1.000)
   NICE(1.000)
   MOM(1.000)
   MECHANIC(1.000)
   JOAN(1.000)

'MECHANIC':
   HUMAN(1.000)
   PERSON(1.000)
   PROFESSION(1.000)
   CARS(1.000)
   MACHINES(1.000)
   SKILL(1.000)
   TALENT(1.000)
   BLUE_COLLAR(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_mary
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
Run 3 of az/oj_easy_mary
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Mary    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (MARY, OJ)
Seq. 1    Driver:Mary    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (MARY, OJ)
Seq. 2    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:DRINK (PERSON, OJ)
Seq. 3    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:PART_OF (OJ, BREAKFAST)
Seq. 4    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:HAS (OJ, VITC)
Seq. 5    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:DELICIOUS (OJ)
Seq. 6    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:SMELLS (OJ, REFRESHING)
Seq. 7    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P6:ALERTING (OJ)
Seq. 8    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P7:EXTRINSIC_CAUSE (OJ)
Seq. 9    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P11:DRINK (JOAN, OJ)
Seq. 10    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P10:ISA (JOAN, MECHANIC)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Mary * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (MARY, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 

'EFFECT3' (index = 3 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P7') DRINK ('JOAN', OJ) 

'CE-4' (index = 4 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT3' (index = 3 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P7') DRINK ('JOAN', OJ) 

     'CAUSE5' (index = 5 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P8')  


'CAUSE5' (index = 5 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P8')  

EFFECT1 (index = 6 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 

EFFECT2 (index = 7 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'HAS' (OJ, 'VITC') 

EFFECT3 (index = 8 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P3') 'DELICIOUS' (OJ) 

EFFECT4 (index = 9 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P4') 'SMELLS' (OJ, 'REFRESHING') 

EFFECT5 (index = 10 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P5') 'ALERTING' (OJ) 

EFFECT6 (index = 11 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P6') 'EXTRINSIC_CAUSE' (OJ) 


Props:
'P1':  [ 'PART_OF1' + OJ ] [ 'PART_OF2' + 'BREAKFAST' ] 
'P2':  [ 'HAS1' + OJ ] [ 'HAS2' + 'VITC' ] 
'P3':  [ 'DELICIOUS1' + OJ ] 
'P4':  [ 'SMELLS1' + OJ ] [ 'SMELLS2' + 'REFRESHING' ] 
'P5':  [ 'ALERTING1' + OJ ] 
'P6':  [ 'EXTRINSIC_CAUSE1' + OJ ] 
'P7':  [ DRINK1 + 'JOAN' ] [ DRINK2 + OJ ] 
'P8':  [ 'ISA1' + 'JOAN' ] [ 'ISA2' + 'MECHANIC' ] 

Preds:
'PART_OF1':
   PART1(1.000)
   CONSTITUENT1(1.000)
   COMPONENT1(1.000)
   ELEMENT1(1.000)
   CONTENT1(1.000)

'PART_OF2':
   PART2(1.000)
   CONSTITUENT2(1.000)
   COMPONENT2(1.000)
   ELEMENT2(1.000)
   CONTENT2(1.000)

'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)

'DELICIOUS1':
   TASTE1(1.000)
   GOOD1(1.000)
   YUM1(1.000)
   DELICIOUS1(1.000)
   TASTY1(1.000)
   REFRESHING1(1.000)
   TANGY1(1.000)
   CITRUS1(1.000)
   TART1(1.000)

'SMELLS1':
   ODOR1(1.000)
   SCENT1(1.000)
   SMELL1(1.000)
   OLFACTION1(1.000)
   AROMA1(1.000)
   FRAGRANCE1(1.000)

'SMELLS2':
   ODOR2(1.000)
   SCENT2(1.000)
   SMELL2(1.000)
   OLFACTION2(1.000)
   AROMA2(1.000)
   FRAGRANCE2(1.000)

'ALERTING1':
   AWAKE1(1.000)
        MORNING1(0.500)
        SLEEPY1(0.500)
        WAKES1(0.500)

'EXTRINSIC_CAUSE1':
   HISTORY1(1.000)
        CROPS1(0.500)
        FLORIDA1(0.500)
        GROWERS1(0.500)

'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'BREAKFAST':
   BREAKFAST(1.000)
   MORNING(1.000)
   FOOD(1.000)
   MEAL(1.000)

'VITC':
   BREAKFAST(1.000)
   HEALTH(1.000)
   VITAMIN(1.000)
   OJ(1.000)
   IMMUNE(1.000)

'REFRESHING':
   STATE(1.000)
   FRESH(1.000)
   YUM(1.000)
   ALERT(1.000)
   REFRESHING(1.000)

'JOAN':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   OLD(1.000)
   NICE(1.000)
   MOM(1.000)
   MECHANIC(1.000)
   JOAN(1.000)

'MECHANIC':
   HUMAN(1.000)
   PERSON(1.000)
   PROFESSION(1.000)
   CARS(1.000)
   MACHINES(1.000)
   SKILL(1.000)
   TALENT(1.000)
   BLUE_COLLAR(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_mary
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
Run 4 of az/oj_easy_mary
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Mary    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (MARY, OJ)
Seq. 1    Driver:Mary    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (MARY, OJ)
Seq. 2    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:DRINK (PERSON, OJ)
Seq. 3    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:PART_OF (OJ, BREAKFAST)
Seq. 4    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:HAS (OJ, VITC)
Seq. 5    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:DELICIOUS (OJ)
Seq. 6    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:SMELLS (OJ, REFRESHING)
Seq. 7    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P6:ALERTING (OJ)
Seq. 8    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P7:EXTRINSIC_CAUSE (OJ)
Seq. 9    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P11:DRINK (JOAN, OJ)
Seq. 10    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P10:ISA (JOAN, MECHANIC)
Seq. 11    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P13:DRINK (SALLY, OJ)
Seq. 12    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P12:ISA (SALLY, DIVORCEE)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Mary * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (MARY, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 

'EFFECT3' (index = 3 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P7') DRINK ('JOAN', OJ) 

'CE-4' (index = 4 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT3' (index = 3 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P7') DRINK ('JOAN', OJ) 

     'CAUSE5' (index = 5 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P8') 'ISA' ('JOAN', 'MECHANIC') 


'CAUSE5' (index = 5 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P8') 'ISA' ('JOAN', 'MECHANIC') 

'EFFECT6' (index = 6 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P9') DRINK ('SALLY', OJ) 

'CE-7' (index = 7 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT6' (index = 6 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P9') DRINK ('SALLY', OJ) 

     'CAUSE8' (index = 8 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P10')  


'CAUSE8' (index = 8 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P10')  

EFFECT1 (index = 9 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 

EFFECT2 (index = 10 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'HAS' (OJ, 'VITC') 

EFFECT3 (index = 11 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P3') 'DELICIOUS' (OJ) 

EFFECT4 (index = 12 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P4') 'SMELLS' (OJ, 'REFRESHING') 

EFFECT5 (index = 13 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P5') 'ALERTING' (OJ) 

EFFECT6 (index = 14 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P6') 'EXTRINSIC_CAUSE' (OJ) 


Props:
'P1':  [ 'PART_OF1' + OJ ] [ 'PART_OF2' + 'BREAKFAST' ] 
'P2':  [ 'HAS1' + OJ ] [ 'HAS2' + 'VITC' ] 
'P3':  [ 'DELICIOUS1' + OJ ] 
'P4':  [ 'SMELLS1' + OJ ] [ 'SMELLS2' + 'REFRESHING' ] 
'P5':  [ 'ALERTING1' + OJ ] 
'P6':  [ 'EXTRINSIC_CAUSE1' + OJ ] 
'P7':  [ DRINK1 + 'JOAN' ] [ DRINK2 + OJ ] 
'P8':  [ 'ISA1' + 'JOAN' ] [ 'ISA2' + 'MECHANIC' ] 
'P9':  [ DRINK1 + 'SALLY' ] [ DRINK2 + OJ ] 
'P10':  [ 'ISA1' + 'SALLY' ] [ 'ISA2' + 'DIVORCEE' ] 

Preds:
'PART_OF1':
   PART1(1.000)
   CONSTITUENT1(1.000)
   COMPONENT1(1.000)
   ELEMENT1(1.000)
   CONTENT1(1.000)

'PART_OF2':
   PART2(1.000)
   CONSTITUENT2(1.000)
   COMPONENT2(1.000)
   ELEMENT2(1.000)
   CONTENT2(1.000)

'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)

'DELICIOUS1':
   TASTE1(1.000)
   GOOD1(1.000)
   YUM1(1.000)
   DELICIOUS1(1.000)
   TASTY1(1.000)
   REFRESHING1(1.000)
   TANGY1(1.000)
   CITRUS1(1.000)
   TART1(1.000)

'SMELLS1':
   ODOR1(1.000)
   SCENT1(1.000)
   SMELL1(1.000)
   OLFACTION1(1.000)
   AROMA1(1.000)
   FRAGRANCE1(1.000)

'SMELLS2':
   ODOR2(1.000)
   SCENT2(1.000)
   SMELL2(1.000)
   OLFACTION2(1.000)
   AROMA2(1.000)
   FRAGRANCE2(1.000)

'ALERTING1':
   AWAKE1(1.000)
        MORNING1(0.500)
        SLEEPY1(0.500)
        WAKES1(0.500)

'EXTRINSIC_CAUSE1':
   HISTORY1(1.000)
        CROPS1(0.500)
        FLORIDA1(0.500)
        GROWERS1(0.500)

'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'BREAKFAST':
   BREAKFAST(1.000)
   MORNING(1.000)
   FOOD(1.000)
   MEAL(1.000)

'VITC':
   BREAKFAST(1.000)
   HEALTH(1.000)
   VITAMIN(1.000)
   OJ(1.000)
   IMMUNE(1.000)

'REFRESHING':
   STATE(1.000)
   FRESH(1.000)
   YUM(1.000)
   ALERT(1.000)
   REFRESHING(1.000)

'JOAN':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   OLD(1.000)
   NICE(1.000)
   MOM(1.000)
   MECHANIC(1.000)
   JOAN(1.000)

'MECHANIC':
   HUMAN(1.000)
   PERSON(1.000)
   PROFESSION(1.000)
   CARS(1.000)
   MACHINES(1.000)
   SKILL(1.000)
   TALENT(1.000)
   BLUE_COLLAR(1.000)

'SALLY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   YOUNG(1.000)
   TIRED(1.000)
   DIVORCEE(1.000)
   TEEN_MOM(1.000)
   SALLY(1.000)

'DIVORCEE':
   HUMAN(1.000)
   PERSON(1.000)
   MARRIED_ONCE(1.000)
   DIVORCED(1.000)
   SINGLE(1.000)
   ANGRY(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_mary
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
Run 5 of az/oj_easy_mary
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Mary    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (MARY, OJ)
Seq. 1    Driver:Mary    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (MARY, OJ)
Seq. 2    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P9:DRINK (LARRY, OJ)
Seq. 3    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P8:HAS (LARRY, FETISH)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Mary * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (MARY, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P1')  


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P1')  

EFFECT1 (index = 3 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1')  


Props:
'P1':  [ 'HAS1' + MARY ] [ 'HAS2' + 'FETISH' ] 

Preds:
'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)


Objs:
'FETISH':
        DESIRE(0.500)
   UNUSUAL(1.000)
        FREAKY(0.500)
        SEXUAL(0.500)
        STRONG(0.500)
        COMPULSION(0.500)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_mary
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
Run 6 of az/oj_easy_mary
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Mary    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (MARY, OJ)
Seq. 1    Driver:Mary    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (MARY, OJ)
Seq. 2    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:DRINK (PERSON, OJ)
Seq. 3    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:PART_OF (OJ, BREAKFAST)
Seq. 4    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:HAS (OJ, VITC)
Seq. 5    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:DELICIOUS (OJ)
Seq. 6    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:SMELLS (OJ, REFRESHING)
Seq. 7    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P6:ALERTING (OJ)
Seq. 8    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P7:EXTRINSIC_CAUSE (OJ)
Seq. 9    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P9:DRINK (LARRY, OJ)
Seq. 10    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P8:HAS (LARRY, FETISH)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Mary * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (MARY, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 

'EFFECT3' (index = 3 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P7') DRINK ('LARRY', OJ) 

'CE-4' (index = 4 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT3' (index = 3 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P7') DRINK ('LARRY', OJ) 

     'CAUSE5' (index = 5 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P8')  


'CAUSE5' (index = 5 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P8')  

EFFECT1 (index = 6 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 

EFFECT2 (index = 7 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'HAS' (OJ, 'VITC') 

EFFECT3 (index = 8 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P3') 'DELICIOUS' (OJ) 

EFFECT4 (index = 9 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P4') 'SMELLS' (OJ, 'REFRESHING') 

EFFECT5 (index = 10 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P5') 'ALERTING' (OJ) 

EFFECT6 (index = 11 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P6') 'EXTRINSIC_CAUSE' (OJ) 


Props:
'P1':  [ 'PART_OF1' + OJ ] [ 'PART_OF2' + 'BREAKFAST' ] 
'P2':  [ 'HAS1' + OJ ] [ 'HAS2' + 'VITC' ] 
'P3':  [ 'DELICIOUS1' + OJ ] 
'P4':  [ 'SMELLS1' + OJ ] [ 'SMELLS2' + 'REFRESHING' ] 
'P5':  [ 'ALERTING1' + OJ ] 
'P6':  [ 'EXTRINSIC_CAUSE1' + OJ ] 
'P7':  [ DRINK1 + 'LARRY' ] [ DRINK2 + OJ ] 
'P8':  [ 'HAS1' + 'LARRY' ] [ 'HAS2' + 'FETISH' ] 

Preds:
'PART_OF1':
   PART1(1.000)
   CONSTITUENT1(1.000)
   COMPONENT1(1.000)
   ELEMENT1(1.000)
   CONTENT1(1.000)

'PART_OF2':
   PART2(1.000)
   CONSTITUENT2(1.000)
   COMPONENT2(1.000)
   ELEMENT2(1.000)
   CONTENT2(1.000)

'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)

'DELICIOUS1':
   TASTE1(1.000)
   GOOD1(1.000)
   YUM1(1.000)
   DELICIOUS1(1.000)
   TASTY1(1.000)
   REFRESHING1(1.000)
   TANGY1(1.000)
   CITRUS1(1.000)
   TART1(1.000)

'SMELLS1':
   ODOR1(1.000)
   SCENT1(1.000)
   SMELL1(1.000)
   OLFACTION1(1.000)
   AROMA1(1.000)
   FRAGRANCE1(1.000)

'SMELLS2':
   ODOR2(1.000)
   SCENT2(1.000)
   SMELL2(1.000)
   OLFACTION2(1.000)
   AROMA2(1.000)
   FRAGRANCE2(1.000)

'ALERTING1':
   AWAKE1(1.000)
        MORNING1(0.500)
        SLEEPY1(0.500)
        WAKES1(0.500)

'EXTRINSIC_CAUSE1':
   HISTORY1(1.000)
        CROPS1(0.500)
        FLORIDA1(0.500)
        GROWERS1(0.500)


Objs:
'BREAKFAST':
   BREAKFAST(1.000)
   MORNING(1.000)
   FOOD(1.000)
   MEAL(1.000)

'VITC':
   BREAKFAST(1.000)
   HEALTH(1.000)
   VITAMIN(1.000)
   OJ(1.000)
   IMMUNE(1.000)

'REFRESHING':
   STATE(1.000)
   FRESH(1.000)
   YUM(1.000)
   ALERT(1.000)
   REFRESHING(1.000)

'LARRY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   MALE(1.000)
   BANKER(1.000)
   DESERVES_DEATH(1.000)
   1%(1.000)
   LARRY(1.000)

'FETISH':
        DESIRE(0.500)
   UNUSUAL(1.000)
        FREAKY(0.500)
        SEXUAL(0.500)
        STRONG(0.500)
        COMPULSION(0.500)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_mary
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
Run 7 of az/oj_easy_mary
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Mary    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (MARY, OJ)
Seq. 1    Driver:Mary    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (MARY, OJ)
Seq. 2    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:DRINK (PERSON, OJ)
Seq. 3    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:PART_OF (OJ, BREAKFAST)
Seq. 4    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:HAS (OJ, VITC)
Seq. 5    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:DELICIOUS (OJ)
Seq. 6    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:SMELLS (OJ, REFRESHING)
Seq. 7    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P6:ALERTING (OJ)
Seq. 8    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P7:EXTRINSIC_CAUSE (OJ)
Seq. 9    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P13:DRINK (SALLY, OJ)
Seq. 10    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P12:ISA (SALLY, DIVORCEE)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Mary * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (MARY, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 

'EFFECT3' (index = 3 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P7') DRINK ('SALLY', OJ) 

'CE-4' (index = 4 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT3' (index = 3 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P7') DRINK ('SALLY', OJ) 

     'CAUSE5' (index = 5 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P8')  


'CAUSE5' (index = 5 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P8')  

EFFECT1 (index = 6 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 

EFFECT2 (index = 7 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'HAS' (OJ, 'VITC') 

EFFECT3 (index = 8 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P3') 'DELICIOUS' (OJ) 

EFFECT4 (index = 9 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P4') 'SMELLS' (OJ, 'REFRESHING') 

EFFECT5 (index = 10 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P5') 'ALERTING' (OJ) 

EFFECT6 (index = 11 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P6') 'EXTRINSIC_CAUSE' (OJ) 


Props:
'P1':  [ 'PART_OF1' + OJ ] [ 'PART_OF2' + 'BREAKFAST' ] 
'P2':  [ 'HAS1' + OJ ] [ 'HAS2' + 'VITC' ] 
'P3':  [ 'DELICIOUS1' + OJ ] 
'P4':  [ 'SMELLS1' + OJ ] [ 'SMELLS2' + 'REFRESHING' ] 
'P5':  [ 'ALERTING1' + OJ ] 
'P6':  [ 'EXTRINSIC_CAUSE1' + OJ ] 
'P7':  [ DRINK1 + 'SALLY' ] [ DRINK2 + OJ ] 
'P8':  [ 'ISA1' + 'SALLY' ] [ 'ISA2' + 'DIVORCEE' ] 

Preds:
'PART_OF1':
   PART1(1.000)
   CONSTITUENT1(1.000)
   COMPONENT1(1.000)
   ELEMENT1(1.000)
   CONTENT1(1.000)

'PART_OF2':
   PART2(1.000)
   CONSTITUENT2(1.000)
   COMPONENT2(1.000)
   ELEMENT2(1.000)
   CONTENT2(1.000)

'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)

'DELICIOUS1':
   TASTE1(1.000)
   GOOD1(1.000)
   YUM1(1.000)
   DELICIOUS1(1.000)
   TASTY1(1.000)
   REFRESHING1(1.000)
   TANGY1(1.000)
   CITRUS1(1.000)
   TART1(1.000)

'SMELLS1':
   ODOR1(1.000)
   SCENT1(1.000)
   SMELL1(1.000)
   OLFACTION1(1.000)
   AROMA1(1.000)
   FRAGRANCE1(1.000)

'SMELLS2':
   ODOR2(1.000)
   SCENT2(1.000)
   SMELL2(1.000)
   OLFACTION2(1.000)
   AROMA2(1.000)
   FRAGRANCE2(1.000)

'ALERTING1':
   AWAKE1(1.000)
        MORNING1(0.500)
        SLEEPY1(0.500)
        WAKES1(0.500)

'EXTRINSIC_CAUSE1':
   HISTORY1(1.000)
        CROPS1(0.500)
        FLORIDA1(0.500)
        GROWERS1(0.500)

'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'BREAKFAST':
   BREAKFAST(1.000)
   MORNING(1.000)
   FOOD(1.000)
   MEAL(1.000)

'VITC':
   BREAKFAST(1.000)
   HEALTH(1.000)
   VITAMIN(1.000)
   OJ(1.000)
   IMMUNE(1.000)

'REFRESHING':
   STATE(1.000)
   FRESH(1.000)
   YUM(1.000)
   ALERT(1.000)
   REFRESHING(1.000)

'SALLY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   YOUNG(1.000)
   TIRED(1.000)
   DIVORCEE(1.000)
   TEEN_MOM(1.000)
   SALLY(1.000)

'DIVORCEE':
   HUMAN(1.000)
   PERSON(1.000)
   MARRIED_ONCE(1.000)
   DIVORCED(1.000)
   SINGLE(1.000)
   ANGRY(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_mary
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
Run 8 of az/oj_easy_mary
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Mary    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (MARY, OJ)
Seq. 1    Driver:Mary    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (MARY, OJ)
Seq. 2    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:DRINK (PERSON, OJ)
Seq. 3    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:PART_OF (OJ, BREAKFAST)
Seq. 4    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:HAS (OJ, VITC)
Seq. 5    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:DELICIOUS (OJ)
Seq. 6    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:SMELLS (OJ, REFRESHING)
Seq. 7    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P6:ALERTING (OJ)
Seq. 8    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P7:EXTRINSIC_CAUSE (OJ)
Seq. 9    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P9:DRINK (LARRY, OJ)
Seq. 10    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P8:HAS (LARRY, FETISH)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Mary * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (MARY, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 

'EFFECT3' (index = 3 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P7') DRINK ('LARRY', OJ) 

'CE-4' (index = 4 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT3' (index = 3 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P7') DRINK ('LARRY', OJ) 

     'CAUSE5' (index = 5 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P8')  


'CAUSE5' (index = 5 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P8')  

EFFECT1 (index = 6 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 

EFFECT2 (index = 7 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'HAS' (OJ, 'VITC') 

EFFECT3 (index = 8 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P3') 'DELICIOUS' (OJ) 

EFFECT4 (index = 9 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P4') 'SMELLS' (OJ, 'REFRESHING') 

EFFECT5 (index = 10 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P5') 'ALERTING' (OJ) 

EFFECT6 (index = 11 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P6') 'EXTRINSIC_CAUSE' (OJ) 


Props:
'P1':  [ 'PART_OF1' + OJ ] [ 'PART_OF2' + 'BREAKFAST' ] 
'P2':  [ 'HAS1' + OJ ] [ 'HAS2' + 'VITC' ] 
'P3':  [ 'DELICIOUS1' + OJ ] 
'P4':  [ 'SMELLS1' + OJ ] [ 'SMELLS2' + 'REFRESHING' ] 
'P5':  [ 'ALERTING1' + OJ ] 
'P6':  [ 'EXTRINSIC_CAUSE1' + OJ ] 
'P7':  [ DRINK1 + 'LARRY' ] [ DRINK2 + OJ ] 
'P8':  [ 'HAS1' + 'LARRY' ] [ 'HAS2' + 'FETISH' ] 

Preds:
'PART_OF1':
   PART1(1.000)
   CONSTITUENT1(1.000)
   COMPONENT1(1.000)
   ELEMENT1(1.000)
   CONTENT1(1.000)

'PART_OF2':
   PART2(1.000)
   CONSTITUENT2(1.000)
   COMPONENT2(1.000)
   ELEMENT2(1.000)
   CONTENT2(1.000)

'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)

'DELICIOUS1':
   TASTE1(1.000)
   GOOD1(1.000)
   YUM1(1.000)
   DELICIOUS1(1.000)
   TASTY1(1.000)
   REFRESHING1(1.000)
   TANGY1(1.000)
   CITRUS1(1.000)
   TART1(1.000)

'SMELLS1':
   ODOR1(1.000)
   SCENT1(1.000)
   SMELL1(1.000)
   OLFACTION1(1.000)
   AROMA1(1.000)
   FRAGRANCE1(1.000)

'SMELLS2':
   ODOR2(1.000)
   SCENT2(1.000)
   SMELL2(1.000)
   OLFACTION2(1.000)
   AROMA2(1.000)
   FRAGRANCE2(1.000)

'ALERTING1':
   AWAKE1(1.000)
        MORNING1(0.500)
        SLEEPY1(0.500)
        WAKES1(0.500)

'EXTRINSIC_CAUSE1':
   HISTORY1(1.000)
        CROPS1(0.500)
        FLORIDA1(0.500)
        GROWERS1(0.500)


Objs:
'BREAKFAST':
   BREAKFAST(1.000)
   MORNING(1.000)
   FOOD(1.000)
   MEAL(1.000)

'VITC':
   BREAKFAST(1.000)
   HEALTH(1.000)
   VITAMIN(1.000)
   OJ(1.000)
   IMMUNE(1.000)

'REFRESHING':
   STATE(1.000)
   FRESH(1.000)
   YUM(1.000)
   ALERT(1.000)
   REFRESHING(1.000)

'LARRY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   MALE(1.000)
   BANKER(1.000)
   DESERVES_DEATH(1.000)
   1%(1.000)
   LARRY(1.000)

'FETISH':
        DESIRE(0.500)
   UNUSUAL(1.000)
        FREAKY(0.500)
        SEXUAL(0.500)
        STRONG(0.500)
        COMPULSION(0.500)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_mary
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
Run 9 of az/oj_easy_mary
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Mary    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (MARY, OJ)
Seq. 1    Driver:Mary    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (MARY, OJ)
Seq. 2    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:DRINK (PERSON, OJ)
Seq. 3    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:PART_OF (OJ, BREAKFAST)
Seq. 4    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:HAS (OJ, VITC)
Seq. 5    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:DELICIOUS (OJ)
Seq. 6    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:SMELLS (OJ, REFRESHING)
Seq. 7    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P6:ALERTING (OJ)
Seq. 8    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P7:EXTRINSIC_CAUSE (OJ)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Mary * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (MARY, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6')  


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6')  

EFFECT1 (index = 3 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 

EFFECT2 (index = 4 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'HAS' (OJ, 'VITC') 

EFFECT3 (index = 5 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P3') 'DELICIOUS' (OJ) 

EFFECT4 (index = 6 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P4') 'SMELLS' (OJ, 'REFRESHING') 

EFFECT5 (index = 7 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P5') 'ALERTING' (OJ) 

EFFECT6 (index = 8 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P6')  


Props:
'P1':  [ 'PART_OF1' + OJ ] [ 'PART_OF2' + 'BREAKFAST' ] 
'P2':  [ 'HAS1' + OJ ] [ 'HAS2' + 'VITC' ] 
'P3':  [ 'DELICIOUS1' + OJ ] 
'P4':  [ 'SMELLS1' + OJ ] [ 'SMELLS2' + 'REFRESHING' ] 
'P5':  [ 'ALERTING1' + OJ ] 
'P6':  [ 'EXTRINSIC_CAUSE1' + OJ ] 

Preds:
'PART_OF1':
   PART1(1.000)
   CONSTITUENT1(1.000)
   COMPONENT1(1.000)
   ELEMENT1(1.000)
   CONTENT1(1.000)

'PART_OF2':
   PART2(1.000)
   CONSTITUENT2(1.000)
   COMPONENT2(1.000)
   ELEMENT2(1.000)
   CONTENT2(1.000)

'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)

'DELICIOUS1':
   TASTE1(1.000)
   GOOD1(1.000)
   YUM1(1.000)
   DELICIOUS1(1.000)
   TASTY1(1.000)
   REFRESHING1(1.000)
   TANGY1(1.000)
   CITRUS1(1.000)
   TART1(1.000)

'SMELLS1':
   ODOR1(1.000)
   SCENT1(1.000)
   SMELL1(1.000)
   OLFACTION1(1.000)
   AROMA1(1.000)
   FRAGRANCE1(1.000)

'SMELLS2':
   ODOR2(1.000)
   SCENT2(1.000)
   SMELL2(1.000)
   OLFACTION2(1.000)
   AROMA2(1.000)
   FRAGRANCE2(1.000)

'ALERTING1':
   AWAKE1(1.000)
        MORNING1(0.500)
        SLEEPY1(0.500)
        WAKES1(0.500)

'EXTRINSIC_CAUSE1':
   HISTORY1(1.000)
        CROPS1(0.500)
        FLORIDA1(0.500)
        GROWERS1(0.500)


Objs:
'BREAKFAST':
   BREAKFAST(1.000)
   MORNING(1.000)
   FOOD(1.000)
   MEAL(1.000)

'VITC':
   BREAKFAST(1.000)
   HEALTH(1.000)
   VITAMIN(1.000)
   OJ(1.000)
   IMMUNE(1.000)

'REFRESHING':
   STATE(1.000)
   FRESH(1.000)
   YUM(1.000)
   ALERT(1.000)
   REFRESHING(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_mary
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
Run 10 of az/oj_easy_mary
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Mary    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (MARY, OJ)
Seq. 1    Driver:Mary    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (MARY, OJ)
Seq. 2    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P13:DRINK (SALLY, OJ)
Seq. 3    Driver:WorkSpace    Recip : Mary    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P12:ISA (SALLY, DIVORCEE)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Mary * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (MARY, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P1')  


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P1')  

EFFECT1 (index = 3 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1')  


Props:
'P1':  [ 'ISA1' + MARY ] [ 'ISA2' + 'DIVORCEE' ] 

Preds:
'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'DIVORCEE':
   HUMAN(1.000)
   PERSON(1.000)
   MARRIED_ONCE(1.000)
   DIVORCED(1.000)
   SINGLE(1.000)
   ANGRY(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_bill
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
Run 1 of az/oj_easy_bill
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Bill    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (BILL, OJ)
Seq. 1    Driver:Bill    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (BILL, OJ)
Seq. 2    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P13:DRINK (SALLY, OJ)
Seq. 3    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P12:ISA (SALLY, DIVORCEE)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Bill * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (BILL, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P1')  


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P1')  

EFFECT1 (index = 3 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1')  


Props:
'P1':  [ 'ISA1' + BILL ] [ 'ISA2' + 'DIVORCEE' ] 

Preds:
'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'DIVORCEE':
   HUMAN(1.000)
   PERSON(1.000)
   MARRIED_ONCE(1.000)
   DIVORCED(1.000)
   SINGLE(1.000)
   ANGRY(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_bill
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
Run 2 of az/oj_easy_bill
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Bill    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (BILL, OJ)
Seq. 1    Driver:Bill    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (BILL, OJ)
Seq. 2    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:DRINK (PERSON, OJ)
Seq. 3    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:PART_OF (OJ, BREAKFAST)
Seq. 4    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:HAS (OJ, VITC)
Seq. 5    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:DELICIOUS (OJ)
Seq. 6    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:SMELLS (OJ, REFRESHING)
Seq. 7    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P6:ALERTING (OJ)
Seq. 8    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P7:EXTRINSIC_CAUSE (OJ)
Seq. 9    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P9:DRINK (LARRY, OJ)
Seq. 10    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P8:HAS (LARRY, FETISH)
Seq. 11    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P11:DRINK (JOAN, OJ)
Seq. 12    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P10:ISA (JOAN, MECHANIC)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Bill * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 


'CE-2' (index = 2 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (BILL, OJ) 

     'CAUSE3' (index = 3 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P8') 'HAS' (BILL, 'FETISH') 


'CAUSE3' (index = 3 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P8') 'HAS' (BILL, 'FETISH') 

'EFFECT4' (index = 4 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P9') DRINK ('JOAN', OJ) 

'CE-5' (index = 5 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT4' (index = 4 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P9') DRINK ('JOAN', OJ) 

     'CAUSE6' (index = 6 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P10')  


'CAUSE6' (index = 6 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P10')  

EFFECT1 (index = 7 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P8') 'HAS' (BILL, 'FETISH') 


Props:
'P1':  [ DRINK1 + 'PERSON' ] [ DRINK2 + OJ ] 
'P2':  [ 'PART_OF1' + OJ ] [ 'PART_OF2' + 'BREAKFAST' ] 
'P3':  [ 'HAS1' + OJ ] [ 'HAS2' + 'VITC' ] 
'P4':  [ 'DELICIOUS1' + OJ ] 
'P5':  [ 'SMELLS1' + OJ ] [ 'SMELLS2' + 'REFRESHING' ] 
'P6':  [ 'ALERTING1' + OJ ] 
'P7':  [ 'EXTRINSIC_CAUSE1' + OJ ] 
'P8':  [ 'HAS1' + BILL ] [ 'HAS2' + 'FETISH' ] 
'P9':  [ DRINK1 + 'JOAN' ] [ DRINK2 + OJ ] 
'P10':  [ 'ISA1' + 'JOAN' ] [ 'ISA2' + 'MECHANIC' ] 

Preds:
'PART_OF1':
   PART1(1.000)
   CONSTITUENT1(1.000)
   COMPONENT1(1.000)
   ELEMENT1(1.000)
   CONTENT1(1.000)

'PART_OF2':
   PART2(1.000)
   CONSTITUENT2(1.000)
   COMPONENT2(1.000)
   ELEMENT2(1.000)
   CONTENT2(1.000)

'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)

'DELICIOUS1':
   TASTE1(1.000)
   GOOD1(1.000)
   YUM1(1.000)
   DELICIOUS1(1.000)
   TASTY1(1.000)
   REFRESHING1(1.000)
   TANGY1(1.000)
   CITRUS1(1.000)
   TART1(1.000)

'SMELLS1':
   ODOR1(1.000)
   SCENT1(1.000)
   SMELL1(1.000)
   OLFACTION1(1.000)
   AROMA1(1.000)
   FRAGRANCE1(1.000)

'SMELLS2':
   ODOR2(1.000)
   SCENT2(1.000)
   SMELL2(1.000)
   OLFACTION2(1.000)
   AROMA2(1.000)
   FRAGRANCE2(1.000)

'ALERTING1':
   AWAKE1(1.000)
        MORNING1(0.500)
        SLEEPY1(0.500)
        WAKES1(0.500)

'EXTRINSIC_CAUSE1':
   HISTORY1(1.000)
        CROPS1(0.500)
        FLORIDA1(0.500)
        GROWERS1(0.500)

'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'PERSON':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)

'BREAKFAST':
   BREAKFAST(1.000)
   MORNING(1.000)
   FOOD(1.000)
   MEAL(1.000)

'VITC':
   BREAKFAST(1.000)
   HEALTH(1.000)
   VITAMIN(1.000)
   OJ(1.000)
   IMMUNE(1.000)

'REFRESHING':
   STATE(1.000)
   FRESH(1.000)
   YUM(1.000)
   ALERT(1.000)
   REFRESHING(1.000)

'FETISH':
        DESIRE(0.500)
   UNUSUAL(1.000)
        FREAKY(0.500)
        SEXUAL(0.500)
        STRONG(0.500)
        COMPULSION(0.500)

'JOAN':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   OLD(1.000)
   NICE(1.000)
   MOM(1.000)
   MECHANIC(1.000)
   JOAN(1.000)

'MECHANIC':
   HUMAN(1.000)
   PERSON(1.000)
   PROFESSION(1.000)
   CARS(1.000)
   MACHINES(1.000)
   SKILL(1.000)
   TALENT(1.000)
   BLUE_COLLAR(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_bill
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
Run 3 of az/oj_easy_bill
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Bill    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (BILL, OJ)
Seq. 1    Driver:Bill    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (BILL, OJ)
Seq. 2    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P9:DRINK (LARRY, OJ)
Seq. 3    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P8:HAS (LARRY, FETISH)
Seq. 4    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P13:DRINK (SALLY, OJ)
Seq. 5    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P12:ISA (SALLY, DIVORCEE)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Bill * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (BILL, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P1') 'HAS' (BILL, 'FETISH') 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P1') 'HAS' (BILL, 'FETISH') 

'EFFECT3' (index = 3 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P2') DRINK ('SALLY', OJ) 

'CE-4' (index = 4 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT3' (index = 3 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P2') DRINK ('SALLY', OJ) 

     'CAUSE5' (index = 5 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P3')  


'CAUSE5' (index = 5 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P3')  

EFFECT1 (index = 6 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'HAS' (BILL, 'FETISH') 


Props:
'P1':  [ 'HAS1' + BILL ] [ 'HAS2' + 'FETISH' ] 
'P2':  [ DRINK1 + 'SALLY' ] [ DRINK2 + OJ ] 
'P3':  [ 'ISA1' + 'SALLY' ] [ 'ISA2' + 'DIVORCEE' ] 

Preds:
'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)

'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'FETISH':
        DESIRE(0.500)
   UNUSUAL(1.000)
        FREAKY(0.500)
        SEXUAL(0.500)
        STRONG(0.500)
        COMPULSION(0.500)

'SALLY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   YOUNG(1.000)
   TIRED(1.000)
   DIVORCEE(1.000)
   TEEN_MOM(1.000)
   SALLY(1.000)

'DIVORCEE':
   HUMAN(1.000)
   PERSON(1.000)
   MARRIED_ONCE(1.000)
   DIVORCED(1.000)
   SINGLE(1.000)
   ANGRY(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_bill
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
Run 4 of az/oj_easy_bill
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Bill    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (BILL, OJ)
Seq. 1    Driver:Bill    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (BILL, OJ)
Seq. 2    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P9:DRINK (LARRY, OJ)
Seq. 3    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P8:HAS (LARRY, FETISH)
Seq. 4    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P13:DRINK (SALLY, OJ)
Seq. 5    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P12:ISA (SALLY, DIVORCEE)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Bill * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (BILL, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P1') 'HAS' (BILL, 'FETISH') 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P1') 'HAS' (BILL, 'FETISH') 

'EFFECT3' (index = 3 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P2') DRINK ('SALLY', OJ) 

'CE-4' (index = 4 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT3' (index = 3 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P2') DRINK ('SALLY', OJ) 

     'CAUSE5' (index = 5 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P3')  


'CAUSE5' (index = 5 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P3')  

EFFECT1 (index = 6 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'HAS' (BILL, 'FETISH') 


Props:
'P1':  [ 'HAS1' + BILL ] [ 'HAS2' + 'FETISH' ] 
'P2':  [ DRINK1 + 'SALLY' ] [ DRINK2 + OJ ] 
'P3':  [ 'ISA1' + 'SALLY' ] [ 'ISA2' + 'DIVORCEE' ] 

Preds:
'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)

'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'FETISH':
        DESIRE(0.500)
   UNUSUAL(1.000)
        FREAKY(0.500)
        SEXUAL(0.500)
        STRONG(0.500)
        COMPULSION(0.500)

'SALLY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   YOUNG(1.000)
   TIRED(1.000)
   DIVORCEE(1.000)
   TEEN_MOM(1.000)
   SALLY(1.000)

'DIVORCEE':
   HUMAN(1.000)
   PERSON(1.000)
   MARRIED_ONCE(1.000)
   DIVORCED(1.000)
   SINGLE(1.000)
   ANGRY(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_bill
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
Run 5 of az/oj_easy_bill
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Bill    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (BILL, OJ)
Seq. 1    Driver:Bill    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (BILL, OJ)
Seq. 2    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P9:DRINK (LARRY, OJ)
Seq. 3    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P8:HAS (LARRY, FETISH)
Seq. 4    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P13:DRINK (SALLY, OJ)
Seq. 5    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P12:ISA (SALLY, DIVORCEE)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Bill * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (BILL, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P1') 'HAS' (BILL, 'FETISH') 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P1') 'HAS' (BILL, 'FETISH') 

'EFFECT3' (index = 3 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P2') DRINK ('SALLY', OJ) 

'CE-4' (index = 4 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT3' (index = 3 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P2') DRINK ('SALLY', OJ) 

     'CAUSE5' (index = 5 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P3')  


'CAUSE5' (index = 5 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P3')  

EFFECT1 (index = 6 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'HAS' (BILL, 'FETISH') 


Props:
'P1':  [ 'HAS1' + BILL ] [ 'HAS2' + 'FETISH' ] 
'P2':  [ DRINK1 + 'SALLY' ] [ DRINK2 + OJ ] 
'P3':  [ 'ISA1' + 'SALLY' ] [ 'ISA2' + 'DIVORCEE' ] 

Preds:
'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)

'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'FETISH':
        DESIRE(0.500)
   UNUSUAL(1.000)
        FREAKY(0.500)
        SEXUAL(0.500)
        STRONG(0.500)
        COMPULSION(0.500)

'SALLY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   YOUNG(1.000)
   TIRED(1.000)
   DIVORCEE(1.000)
   TEEN_MOM(1.000)
   SALLY(1.000)

'DIVORCEE':
   HUMAN(1.000)
   PERSON(1.000)
   MARRIED_ONCE(1.000)
   DIVORCED(1.000)
   SINGLE(1.000)
   ANGRY(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_bill
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
Run 6 of az/oj_easy_bill
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Bill    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (BILL, OJ)
Seq. 1    Driver:Bill    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (BILL, OJ)
Seq. 2    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P13:DRINK (SALLY, OJ)
Seq. 3    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P12:ISA (SALLY, DIVORCEE)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Bill * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (BILL, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P1')  


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P1')  

EFFECT1 (index = 3 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1')  


Props:
'P1':  [ 'ISA1' + BILL ] [ 'ISA2' + 'DIVORCEE' ] 

Preds:
'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'DIVORCEE':
   HUMAN(1.000)
   PERSON(1.000)
   MARRIED_ONCE(1.000)
   DIVORCED(1.000)
   SINGLE(1.000)
   ANGRY(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_bill
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
Run 7 of az/oj_easy_bill
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Bill    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (BILL, OJ)
Seq. 1    Driver:Bill    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (BILL, OJ)
Seq. 2    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:DRINK (PERSON, OJ)
Seq. 3    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:PART_OF (OJ, BREAKFAST)
Seq. 4    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:HAS (OJ, VITC)
Seq. 5    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:DELICIOUS (OJ)
Seq. 6    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:SMELLS (OJ, REFRESHING)
Seq. 7    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P6:ALERTING (OJ)
Seq. 8    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P7:EXTRINSIC_CAUSE (OJ)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Bill * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (BILL, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6')  


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6')  

EFFECT1 (index = 3 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 

EFFECT2 (index = 4 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'HAS' (OJ, 'VITC') 

EFFECT3 (index = 5 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P3') 'DELICIOUS' (OJ) 

EFFECT4 (index = 6 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P4') 'SMELLS' (OJ, 'REFRESHING') 

EFFECT5 (index = 7 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P5') 'ALERTING' (OJ) 

EFFECT6 (index = 8 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P6')  


Props:
'P1':  [ 'PART_OF1' + OJ ] [ 'PART_OF2' + 'BREAKFAST' ] 
'P2':  [ 'HAS1' + OJ ] [ 'HAS2' + 'VITC' ] 
'P3':  [ 'DELICIOUS1' + OJ ] 
'P4':  [ 'SMELLS1' + OJ ] [ 'SMELLS2' + 'REFRESHING' ] 
'P5':  [ 'ALERTING1' + OJ ] 
'P6':  [ 'EXTRINSIC_CAUSE1' + OJ ] 

Preds:
'PART_OF1':
   PART1(1.000)
   CONSTITUENT1(1.000)
   COMPONENT1(1.000)
   ELEMENT1(1.000)
   CONTENT1(1.000)

'PART_OF2':
   PART2(1.000)
   CONSTITUENT2(1.000)
   COMPONENT2(1.000)
   ELEMENT2(1.000)
   CONTENT2(1.000)

'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)

'DELICIOUS1':
   TASTE1(1.000)
   GOOD1(1.000)
   YUM1(1.000)
   DELICIOUS1(1.000)
   TASTY1(1.000)
   REFRESHING1(1.000)
   TANGY1(1.000)
   CITRUS1(1.000)
   TART1(1.000)

'SMELLS1':
   ODOR1(1.000)
   SCENT1(1.000)
   SMELL1(1.000)
   OLFACTION1(1.000)
   AROMA1(1.000)
   FRAGRANCE1(1.000)

'SMELLS2':
   ODOR2(1.000)
   SCENT2(1.000)
   SMELL2(1.000)
   OLFACTION2(1.000)
   AROMA2(1.000)
   FRAGRANCE2(1.000)

'ALERTING1':
   AWAKE1(1.000)
        MORNING1(0.500)
        SLEEPY1(0.500)
        WAKES1(0.500)

'EXTRINSIC_CAUSE1':
   HISTORY1(1.000)
        CROPS1(0.500)
        FLORIDA1(0.500)
        GROWERS1(0.500)


Objs:
'BREAKFAST':
   BREAKFAST(1.000)
   MORNING(1.000)
   FOOD(1.000)
   MEAL(1.000)

'VITC':
   BREAKFAST(1.000)
   HEALTH(1.000)
   VITAMIN(1.000)
   OJ(1.000)
   IMMUNE(1.000)

'REFRESHING':
   STATE(1.000)
   FRESH(1.000)
   YUM(1.000)
   ALERT(1.000)
   REFRESHING(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_bill
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
Run 8 of az/oj_easy_bill
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Bill    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (BILL, OJ)
Seq. 1    Driver:Bill    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (BILL, OJ)
Seq. 2    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:DRINK (PERSON, OJ)
Seq. 3    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:PART_OF (OJ, BREAKFAST)
Seq. 4    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:HAS (OJ, VITC)
Seq. 5    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:DELICIOUS (OJ)
Seq. 6    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:SMELLS (OJ, REFRESHING)
Seq. 7    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P6:ALERTING (OJ)
Seq. 8    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P7:EXTRINSIC_CAUSE (OJ)
Seq. 9    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P9:DRINK (LARRY, OJ)
Seq. 10    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P8:HAS (LARRY, FETISH)
Seq. 11    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P11:DRINK (JOAN, OJ)
Seq. 12    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P10:ISA (JOAN, MECHANIC)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Bill * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 


'CE-2' (index = 2 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (BILL, OJ) 

     'CAUSE3' (index = 3 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P8') 'HAS' (BILL, 'FETISH') 


'CAUSE3' (index = 3 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P8') 'HAS' (BILL, 'FETISH') 

'EFFECT4' (index = 4 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P9') DRINK ('JOAN', OJ) 

'CE-5' (index = 5 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT4' (index = 4 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P9') DRINK ('JOAN', OJ) 

     'CAUSE6' (index = 6 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P10')  


'CAUSE6' (index = 6 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P10')  

EFFECT1 (index = 7 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P8') 'HAS' (BILL, 'FETISH') 


Props:
'P1':  [ DRINK1 + 'PERSON' ] [ DRINK2 + OJ ] 
'P2':  [ 'PART_OF1' + OJ ] [ 'PART_OF2' + 'BREAKFAST' ] 
'P3':  [ 'HAS1' + OJ ] [ 'HAS2' + 'VITC' ] 
'P4':  [ 'DELICIOUS1' + OJ ] 
'P5':  [ 'SMELLS1' + OJ ] [ 'SMELLS2' + 'REFRESHING' ] 
'P6':  [ 'ALERTING1' + OJ ] 
'P7':  [ 'EXTRINSIC_CAUSE1' + OJ ] 
'P8':  [ 'HAS1' + BILL ] [ 'HAS2' + 'FETISH' ] 
'P9':  [ DRINK1 + 'JOAN' ] [ DRINK2 + OJ ] 
'P10':  [ 'ISA1' + 'JOAN' ] [ 'ISA2' + 'MECHANIC' ] 

Preds:
'PART_OF1':
   PART1(1.000)
   CONSTITUENT1(1.000)
   COMPONENT1(1.000)
   ELEMENT1(1.000)
   CONTENT1(1.000)

'PART_OF2':
   PART2(1.000)
   CONSTITUENT2(1.000)
   COMPONENT2(1.000)
   ELEMENT2(1.000)
   CONTENT2(1.000)

'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)

'DELICIOUS1':
   TASTE1(1.000)
   GOOD1(1.000)
   YUM1(1.000)
   DELICIOUS1(1.000)
   TASTY1(1.000)
   REFRESHING1(1.000)
   TANGY1(1.000)
   CITRUS1(1.000)
   TART1(1.000)

'SMELLS1':
   ODOR1(1.000)
   SCENT1(1.000)
   SMELL1(1.000)
   OLFACTION1(1.000)
   AROMA1(1.000)
   FRAGRANCE1(1.000)

'SMELLS2':
   ODOR2(1.000)
   SCENT2(1.000)
   SMELL2(1.000)
   OLFACTION2(1.000)
   AROMA2(1.000)
   FRAGRANCE2(1.000)

'ALERTING1':
   AWAKE1(1.000)
        MORNING1(0.500)
        SLEEPY1(0.500)
        WAKES1(0.500)

'EXTRINSIC_CAUSE1':
   HISTORY1(1.000)
        CROPS1(0.500)
        FLORIDA1(0.500)
        GROWERS1(0.500)

'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'PERSON':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)

'BREAKFAST':
   BREAKFAST(1.000)
   MORNING(1.000)
   FOOD(1.000)
   MEAL(1.000)

'VITC':
   BREAKFAST(1.000)
   HEALTH(1.000)
   VITAMIN(1.000)
   OJ(1.000)
   IMMUNE(1.000)

'REFRESHING':
   STATE(1.000)
   FRESH(1.000)
   YUM(1.000)
   ALERT(1.000)
   REFRESHING(1.000)

'FETISH':
        DESIRE(0.500)
   UNUSUAL(1.000)
        FREAKY(0.500)
        SEXUAL(0.500)
        STRONG(0.500)
        COMPULSION(0.500)

'JOAN':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   OLD(1.000)
   NICE(1.000)
   MOM(1.000)
   MECHANIC(1.000)
   JOAN(1.000)

'MECHANIC':
   HUMAN(1.000)
   PERSON(1.000)
   PROFESSION(1.000)
   CARS(1.000)
   MACHINES(1.000)
   SKILL(1.000)
   TALENT(1.000)
   BLUE_COLLAR(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_bill
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
Run 9 of az/oj_easy_bill
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Bill    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (BILL, OJ)
Seq. 1    Driver:Bill    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (BILL, OJ)
Seq. 2    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P11:DRINK (JOAN, OJ)
Seq. 3    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P10:ISA (JOAN, MECHANIC)
Seq. 4    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P13:DRINK (SALLY, OJ)
Seq. 5    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P12:ISA (SALLY, DIVORCEE)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Bill * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (BILL, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P1') 'ISA' (BILL, 'MECHANIC') 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P1') 'ISA' (BILL, 'MECHANIC') 

'EFFECT3' (index = 3 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P2') DRINK ('SALLY', OJ) 

'CE-4' (index = 4 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT3' (index = 3 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P2') DRINK ('SALLY', OJ) 

     'CAUSE5' (index = 5 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P3')  


'CAUSE5' (index = 5 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P3')  

EFFECT1 (index = 6 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'ISA' (BILL, 'MECHANIC') 


Props:
'P1':  [ 'ISA1' + BILL ] [ 'ISA2' + 'MECHANIC' ] 
'P2':  [ DRINK1 + 'SALLY' ] [ DRINK2 + OJ ] 
'P3':  [ 'ISA1' + 'SALLY' ] [ 'ISA2' + 'DIVORCEE' ] 

Preds:
'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'MECHANIC':
   HUMAN(1.000)
   PERSON(1.000)
   PROFESSION(1.000)
   CARS(1.000)
   MACHINES(1.000)
   SKILL(1.000)
   TALENT(1.000)
   BLUE_COLLAR(1.000)

'SALLY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   YOUNG(1.000)
   TIRED(1.000)
   DIVORCEE(1.000)
   TEEN_MOM(1.000)
   SALLY(1.000)

'DIVORCEE':
   HUMAN(1.000)
   PERSON(1.000)
   MARRIED_ONCE(1.000)
   DIVORCED(1.000)
   SINGLE(1.000)
   ANGRY(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_bill
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
Run 10 of az/oj_easy_bill
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Bill    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (BILL, OJ)
Seq. 1    Driver:Bill    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (BILL, OJ)
Seq. 2    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P11:DRINK (JOAN, OJ)
Seq. 3    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P10:ISA (JOAN, MECHANIC)
Seq. 4    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P13:DRINK (SALLY, OJ)
Seq. 5    Driver:WorkSpace    Recip : Bill    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P12:ISA (SALLY, DIVORCEE)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Bill * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (BILL, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P1') 'ISA' (BILL, 'MECHANIC') 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P1') 'ISA' (BILL, 'MECHANIC') 

'EFFECT3' (index = 3 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P2') DRINK ('SALLY', OJ) 

'CE-4' (index = 4 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT3' (index = 3 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P2') DRINK ('SALLY', OJ) 

     'CAUSE5' (index = 5 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P3')  


'CAUSE5' (index = 5 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P3')  

EFFECT1 (index = 6 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'ISA' (BILL, 'MECHANIC') 


Props:
'P1':  [ 'ISA1' + BILL ] [ 'ISA2' + 'MECHANIC' ] 
'P2':  [ DRINK1 + 'SALLY' ] [ DRINK2 + OJ ] 
'P3':  [ 'ISA1' + 'SALLY' ] [ 'ISA2' + 'DIVORCEE' ] 

Preds:
'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'MECHANIC':
   HUMAN(1.000)
   PERSON(1.000)
   PROFESSION(1.000)
   CARS(1.000)
   MACHINES(1.000)
   SKILL(1.000)
   TALENT(1.000)
   BLUE_COLLAR(1.000)

'SALLY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   YOUNG(1.000)
   TIRED(1.000)
   DIVORCEE(1.000)
   TEEN_MOM(1.000)
   SALLY(1.000)

'DIVORCEE':
   HUMAN(1.000)
   PERSON(1.000)
   MARRIED_ONCE(1.000)
   DIVORCED(1.000)
   SINGLE(1.000)
   ANGRY(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_mike
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
Run 1 of az/oj_easy_mike
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Mike    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (MIKE, OJ)
Seq. 1    Driver:Mike    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (MIKE, OJ)
Seq. 2    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P9:DRINK (LARRY, OJ)
Seq. 3    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P8:HAS (LARRY, FETISH)
Seq. 4    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P11:DRINK (JOAN, OJ)
Seq. 5    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P10:ISA (JOAN, MECHANIC)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Mike * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (MIKE, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P1') 'HAS' (MIKE, 'FETISH') 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P1') 'HAS' (MIKE, 'FETISH') 

'EFFECT3' (index = 3 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P2') DRINK ('JOAN', OJ) 

'CE-4' (index = 4 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT3' (index = 3 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P2') DRINK ('JOAN', OJ) 

     'CAUSE5' (index = 5 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P3')  


'CAUSE5' (index = 5 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P3')  

EFFECT1 (index = 6 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'HAS' (MIKE, 'FETISH') 


Props:
'P1':  [ 'HAS1' + MIKE ] [ 'HAS2' + 'FETISH' ] 
'P2':  [ DRINK1 + 'JOAN' ] [ DRINK2 + OJ ] 
'P3':  [ 'ISA1' + 'JOAN' ] [ 'ISA2' + 'MECHANIC' ] 

Preds:
'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)

'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'FETISH':
        DESIRE(0.500)
   UNUSUAL(1.000)
        FREAKY(0.500)
        SEXUAL(0.500)
        STRONG(0.500)
        COMPULSION(0.500)

'JOAN':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   OLD(1.000)
   NICE(1.000)
   MOM(1.000)
   MECHANIC(1.000)
   JOAN(1.000)

'MECHANIC':
   HUMAN(1.000)
   PERSON(1.000)
   PROFESSION(1.000)
   CARS(1.000)
   MACHINES(1.000)
   SKILL(1.000)
   TALENT(1.000)
   BLUE_COLLAR(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_mike
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
Run 2 of az/oj_easy_mike
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Mike    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (MIKE, OJ)
Seq. 1    Driver:Mike    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (MIKE, OJ)
Seq. 2    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:DRINK (PERSON, OJ)
Seq. 3    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:PART_OF (OJ, BREAKFAST)
Seq. 4    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:HAS (OJ, VITC)
Seq. 5    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:DELICIOUS (OJ)
Seq. 6    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:SMELLS (OJ, REFRESHING)
Seq. 7    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P6:ALERTING (OJ)
Seq. 8    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P7:EXTRINSIC_CAUSE (OJ)
Seq. 9    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P11:DRINK (JOAN, OJ)
Seq. 10    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P10:ISA (JOAN, MECHANIC)
Seq. 11    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P13:DRINK (SALLY, OJ)
Seq. 12    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P12:ISA (SALLY, DIVORCEE)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Mike * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (MIKE, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 

'EFFECT3' (index = 3 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P7') DRINK ('JOAN', OJ) 

'CE-4' (index = 4 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT3' (index = 3 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P7') DRINK ('JOAN', OJ) 

     'CAUSE5' (index = 5 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P8') 'ISA' ('JOAN', 'MECHANIC') 


'CAUSE5' (index = 5 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P8') 'ISA' ('JOAN', 'MECHANIC') 

'EFFECT6' (index = 6 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P9') DRINK ('SALLY', OJ) 

'CE-7' (index = 7 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT6' (index = 6 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P9') DRINK ('SALLY', OJ) 

     'CAUSE8' (index = 8 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P10')  


'CAUSE8' (index = 8 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P10')  

EFFECT1 (index = 9 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 

EFFECT2 (index = 10 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'HAS' (OJ, 'VITC') 

EFFECT3 (index = 11 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P3') 'DELICIOUS' (OJ) 

EFFECT4 (index = 12 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P4') 'SMELLS' (OJ, 'REFRESHING') 

EFFECT5 (index = 13 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P5') 'ALERTING' (OJ) 

EFFECT6 (index = 14 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P6') 'EXTRINSIC_CAUSE' (OJ) 


Props:
'P1':  [ 'PART_OF1' + OJ ] [ 'PART_OF2' + 'BREAKFAST' ] 
'P2':  [ 'HAS1' + OJ ] [ 'HAS2' + 'VITC' ] 
'P3':  [ 'DELICIOUS1' + OJ ] 
'P4':  [ 'SMELLS1' + OJ ] [ 'SMELLS2' + 'REFRESHING' ] 
'P5':  [ 'ALERTING1' + OJ ] 
'P6':  [ 'EXTRINSIC_CAUSE1' + OJ ] 
'P7':  [ DRINK1 + 'JOAN' ] [ DRINK2 + OJ ] 
'P8':  [ 'ISA1' + 'JOAN' ] [ 'ISA2' + 'MECHANIC' ] 
'P9':  [ DRINK1 + 'SALLY' ] [ DRINK2 + OJ ] 
'P10':  [ 'ISA1' + 'SALLY' ] [ 'ISA2' + 'DIVORCEE' ] 

Preds:
'PART_OF1':
   PART1(1.000)
   CONSTITUENT1(1.000)
   COMPONENT1(1.000)
   ELEMENT1(1.000)
   CONTENT1(1.000)

'PART_OF2':
   PART2(1.000)
   CONSTITUENT2(1.000)
   COMPONENT2(1.000)
   ELEMENT2(1.000)
   CONTENT2(1.000)

'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)

'DELICIOUS1':
   TASTE1(1.000)
   GOOD1(1.000)
   YUM1(1.000)
   DELICIOUS1(1.000)
   TASTY1(1.000)
   REFRESHING1(1.000)
   TANGY1(1.000)
   CITRUS1(1.000)
   TART1(1.000)

'SMELLS1':
   ODOR1(1.000)
   SCENT1(1.000)
   SMELL1(1.000)
   OLFACTION1(1.000)
   AROMA1(1.000)
   FRAGRANCE1(1.000)

'SMELLS2':
   ODOR2(1.000)
   SCENT2(1.000)
   SMELL2(1.000)
   OLFACTION2(1.000)
   AROMA2(1.000)
   FRAGRANCE2(1.000)

'ALERTING1':
   AWAKE1(1.000)
        MORNING1(0.500)
        SLEEPY1(0.500)
        WAKES1(0.500)

'EXTRINSIC_CAUSE1':
   HISTORY1(1.000)
        CROPS1(0.500)
        FLORIDA1(0.500)
        GROWERS1(0.500)

'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'BREAKFAST':
   BREAKFAST(1.000)
   MORNING(1.000)
   FOOD(1.000)
   MEAL(1.000)

'VITC':
   BREAKFAST(1.000)
   HEALTH(1.000)
   VITAMIN(1.000)
   OJ(1.000)
   IMMUNE(1.000)

'REFRESHING':
   STATE(1.000)
   FRESH(1.000)
   YUM(1.000)
   ALERT(1.000)
   REFRESHING(1.000)

'JOAN':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   OLD(1.000)
   NICE(1.000)
   MOM(1.000)
   MECHANIC(1.000)
   JOAN(1.000)

'MECHANIC':
   HUMAN(1.000)
   PERSON(1.000)
   PROFESSION(1.000)
   CARS(1.000)
   MACHINES(1.000)
   SKILL(1.000)
   TALENT(1.000)
   BLUE_COLLAR(1.000)

'SALLY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   YOUNG(1.000)
   TIRED(1.000)
   DIVORCEE(1.000)
   TEEN_MOM(1.000)
   SALLY(1.000)

'DIVORCEE':
   HUMAN(1.000)
   PERSON(1.000)
   MARRIED_ONCE(1.000)
   DIVORCED(1.000)
   SINGLE(1.000)
   ANGRY(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_mike
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
Run 3 of az/oj_easy_mike
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Mike    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (MIKE, OJ)
Seq. 1    Driver:Mike    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (MIKE, OJ)
Seq. 2    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:DRINK (PERSON, OJ)
Seq. 3    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:PART_OF (OJ, BREAKFAST)
Seq. 4    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:HAS (OJ, VITC)
Seq. 5    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:DELICIOUS (OJ)
Seq. 6    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:SMELLS (OJ, REFRESHING)
Seq. 7    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P6:ALERTING (OJ)
Seq. 8    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P7:EXTRINSIC_CAUSE (OJ)
Seq. 9    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P9:DRINK (LARRY, OJ)
Seq. 10    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P8:HAS (LARRY, FETISH)
Seq. 11    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P13:DRINK (SALLY, OJ)
Seq. 12    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P12:ISA (SALLY, DIVORCEE)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Mike * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (MIKE, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 

'EFFECT3' (index = 3 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P7') DRINK ('LARRY', OJ) 

'CE-4' (index = 4 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT3' (index = 3 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P7') DRINK ('LARRY', OJ) 

     'CAUSE5' (index = 5 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P8') 'HAS' ('LARRY', 'FETISH') 


'CAUSE5' (index = 5 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P8') 'HAS' ('LARRY', 'FETISH') 

'EFFECT6' (index = 6 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P9') DRINK ('SALLY', OJ) 

'CE-7' (index = 7 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT6' (index = 6 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P9') DRINK ('SALLY', OJ) 

     'CAUSE8' (index = 8 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P10')  


'CAUSE8' (index = 8 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P10')  

EFFECT1 (index = 9 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 

EFFECT2 (index = 10 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'HAS' (OJ, 'VITC') 

EFFECT3 (index = 11 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P3') 'DELICIOUS' (OJ) 

EFFECT4 (index = 12 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P4') 'SMELLS' (OJ, 'REFRESHING') 

EFFECT5 (index = 13 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P5') 'ALERTING' (OJ) 

EFFECT6 (index = 14 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P6') 'EXTRINSIC_CAUSE' (OJ) 


Props:
'P1':  [ 'PART_OF1' + OJ ] [ 'PART_OF2' + 'BREAKFAST' ] 
'P2':  [ 'HAS1' + OJ ] [ 'HAS2' + 'VITC' ] 
'P3':  [ 'DELICIOUS1' + OJ ] 
'P4':  [ 'SMELLS1' + OJ ] [ 'SMELLS2' + 'REFRESHING' ] 
'P5':  [ 'ALERTING1' + OJ ] 
'P6':  [ 'EXTRINSIC_CAUSE1' + OJ ] 
'P7':  [ DRINK1 + 'LARRY' ] [ DRINK2 + OJ ] 
'P8':  [ 'HAS1' + 'LARRY' ] [ 'HAS2' + 'FETISH' ] 
'P9':  [ DRINK1 + 'SALLY' ] [ DRINK2 + OJ ] 
'P10':  [ 'ISA1' + 'SALLY' ] [ 'ISA2' + 'DIVORCEE' ] 

Preds:
'PART_OF1':
   PART1(1.000)
   CONSTITUENT1(1.000)
   COMPONENT1(1.000)
   ELEMENT1(1.000)
   CONTENT1(1.000)

'PART_OF2':
   PART2(1.000)
   CONSTITUENT2(1.000)
   COMPONENT2(1.000)
   ELEMENT2(1.000)
   CONTENT2(1.000)

'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)

'DELICIOUS1':
   TASTE1(1.000)
   GOOD1(1.000)
   YUM1(1.000)
   DELICIOUS1(1.000)
   TASTY1(1.000)
   REFRESHING1(1.000)
   TANGY1(1.000)
   CITRUS1(1.000)
   TART1(1.000)

'SMELLS1':
   ODOR1(1.000)
   SCENT1(1.000)
   SMELL1(1.000)
   OLFACTION1(1.000)
   AROMA1(1.000)
   FRAGRANCE1(1.000)

'SMELLS2':
   ODOR2(1.000)
   SCENT2(1.000)
   SMELL2(1.000)
   OLFACTION2(1.000)
   AROMA2(1.000)
   FRAGRANCE2(1.000)

'ALERTING1':
   AWAKE1(1.000)
        MORNING1(0.500)
        SLEEPY1(0.500)
        WAKES1(0.500)

'EXTRINSIC_CAUSE1':
   HISTORY1(1.000)
        CROPS1(0.500)
        FLORIDA1(0.500)
        GROWERS1(0.500)

'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'BREAKFAST':
   BREAKFAST(1.000)
   MORNING(1.000)
   FOOD(1.000)
   MEAL(1.000)

'VITC':
   BREAKFAST(1.000)
   HEALTH(1.000)
   VITAMIN(1.000)
   OJ(1.000)
   IMMUNE(1.000)

'REFRESHING':
   STATE(1.000)
   FRESH(1.000)
   YUM(1.000)
   ALERT(1.000)
   REFRESHING(1.000)

'LARRY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   MALE(1.000)
   BANKER(1.000)
   DESERVES_DEATH(1.000)
   1%(1.000)
   LARRY(1.000)

'FETISH':
        DESIRE(0.500)
   UNUSUAL(1.000)
        FREAKY(0.500)
        SEXUAL(0.500)
        STRONG(0.500)
        COMPULSION(0.500)

'SALLY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   YOUNG(1.000)
   TIRED(1.000)
   DIVORCEE(1.000)
   TEEN_MOM(1.000)
   SALLY(1.000)

'DIVORCEE':
   HUMAN(1.000)
   PERSON(1.000)
   MARRIED_ONCE(1.000)
   DIVORCED(1.000)
   SINGLE(1.000)
   ANGRY(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_mike
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
Run 4 of az/oj_easy_mike
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Mike    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (MIKE, OJ)
Seq. 1    Driver:Mike    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (MIKE, OJ)
Seq. 2    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:DRINK (PERSON, OJ)
Seq. 3    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:PART_OF (OJ, BREAKFAST)
Seq. 4    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:HAS (OJ, VITC)
Seq. 5    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:DELICIOUS (OJ)
Seq. 6    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:SMELLS (OJ, REFRESHING)
Seq. 7    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P6:ALERTING (OJ)
Seq. 8    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P7:EXTRINSIC_CAUSE (OJ)
Seq. 9    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P9:DRINK (LARRY, OJ)
Seq. 10    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P8:HAS (LARRY, FETISH)
Seq. 11    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P11:DRINK (JOAN, OJ)
Seq. 12    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P10:ISA (JOAN, MECHANIC)
Seq. 13    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P13:DRINK (SALLY, OJ)
Seq. 14    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P12:ISA (SALLY, DIVORCEE)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Mike * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (MIKE, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 

'EFFECT3' (index = 3 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P7') DRINK ('LARRY', OJ) 

'CE-4' (index = 4 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT3' (index = 3 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P7') DRINK ('LARRY', OJ) 

     'CAUSE5' (index = 5 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P8') 'HAS' ('LARRY', 'FETISH') 


'CAUSE5' (index = 5 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P8') 'HAS' ('LARRY', 'FETISH') 

'EFFECT6' (index = 6 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P9') DRINK ('JOAN', OJ) 

'CE-7' (index = 7 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT6' (index = 6 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P9') DRINK ('JOAN', OJ) 

     'CAUSE8' (index = 8 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P10') 'ISA' ('JOAN', 'MECHANIC') 


'CAUSE8' (index = 8 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P10') 'ISA' ('JOAN', 'MECHANIC') 

'EFFECT9' (index = 9 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P11') DRINK ('SALLY', OJ) 

'CE-10' (index = 10 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT9' (index = 9 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P11') DRINK ('SALLY', OJ) 

     'CAUSE11' (index = 11 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P12')  


'CAUSE11' (index = 11 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P12')  

EFFECT1 (index = 12 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 

EFFECT2 (index = 13 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'HAS' (OJ, 'VITC') 

EFFECT3 (index = 14 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P3') 'DELICIOUS' (OJ) 

EFFECT4 (index = 15 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P4') 'SMELLS' (OJ, 'REFRESHING') 

EFFECT5 (index = 16 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P5') 'ALERTING' (OJ) 

EFFECT6 (index = 17 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P6') 'EXTRINSIC_CAUSE' (OJ) 


Props:
'P1':  [ 'PART_OF1' + OJ ] [ 'PART_OF2' + 'BREAKFAST' ] 
'P2':  [ 'HAS1' + OJ ] [ 'HAS2' + 'VITC' ] 
'P3':  [ 'DELICIOUS1' + OJ ] 
'P4':  [ 'SMELLS1' + OJ ] [ 'SMELLS2' + 'REFRESHING' ] 
'P5':  [ 'ALERTING1' + OJ ] 
'P6':  [ 'EXTRINSIC_CAUSE1' + OJ ] 
'P7':  [ DRINK1 + 'LARRY' ] [ DRINK2 + OJ ] 
'P8':  [ 'HAS1' + 'LARRY' ] [ 'HAS2' + 'FETISH' ] 
'P9':  [ DRINK1 + 'JOAN' ] [ DRINK2 + OJ ] 
'P10':  [ 'ISA1' + 'JOAN' ] [ 'ISA2' + 'MECHANIC' ] 
'P11':  [ DRINK1 + 'SALLY' ] [ DRINK2 + OJ ] 
'P12':  [ 'ISA1' + 'SALLY' ] [ 'ISA2' + 'DIVORCEE' ] 

Preds:
'PART_OF1':
   PART1(1.000)
   CONSTITUENT1(1.000)
   COMPONENT1(1.000)
   ELEMENT1(1.000)
   CONTENT1(1.000)

'PART_OF2':
   PART2(1.000)
   CONSTITUENT2(1.000)
   COMPONENT2(1.000)
   ELEMENT2(1.000)
   CONTENT2(1.000)

'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)

'DELICIOUS1':
   TASTE1(1.000)
   GOOD1(1.000)
   YUM1(1.000)
   DELICIOUS1(1.000)
   TASTY1(1.000)
   REFRESHING1(1.000)
   TANGY1(1.000)
   CITRUS1(1.000)
   TART1(1.000)

'SMELLS1':
   ODOR1(1.000)
   SCENT1(1.000)
   SMELL1(1.000)
   OLFACTION1(1.000)
   AROMA1(1.000)
   FRAGRANCE1(1.000)

'SMELLS2':
   ODOR2(1.000)
   SCENT2(1.000)
   SMELL2(1.000)
   OLFACTION2(1.000)
   AROMA2(1.000)
   FRAGRANCE2(1.000)

'ALERTING1':
   AWAKE1(1.000)
        MORNING1(0.500)
        SLEEPY1(0.500)
        WAKES1(0.500)

'EXTRINSIC_CAUSE1':
   HISTORY1(1.000)
        CROPS1(0.500)
        FLORIDA1(0.500)
        GROWERS1(0.500)

'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'BREAKFAST':
   BREAKFAST(1.000)
   MORNING(1.000)
   FOOD(1.000)
   MEAL(1.000)

'VITC':
   BREAKFAST(1.000)
   HEALTH(1.000)
   VITAMIN(1.000)
   OJ(1.000)
   IMMUNE(1.000)

'REFRESHING':
   STATE(1.000)
   FRESH(1.000)
   YUM(1.000)
   ALERT(1.000)
   REFRESHING(1.000)

'LARRY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   MALE(1.000)
   BANKER(1.000)
   DESERVES_DEATH(1.000)
   1%(1.000)
   LARRY(1.000)

'FETISH':
        DESIRE(0.500)
   UNUSUAL(1.000)
        FREAKY(0.500)
        SEXUAL(0.500)
        STRONG(0.500)
        COMPULSION(0.500)

'JOAN':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   OLD(1.000)
   NICE(1.000)
   MOM(1.000)
   MECHANIC(1.000)
   JOAN(1.000)

'MECHANIC':
   HUMAN(1.000)
   PERSON(1.000)
   PROFESSION(1.000)
   CARS(1.000)
   MACHINES(1.000)
   SKILL(1.000)
   TALENT(1.000)
   BLUE_COLLAR(1.000)

'SALLY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   YOUNG(1.000)
   TIRED(1.000)
   DIVORCEE(1.000)
   TEEN_MOM(1.000)
   SALLY(1.000)

'DIVORCEE':
   HUMAN(1.000)
   PERSON(1.000)
   MARRIED_ONCE(1.000)
   DIVORCED(1.000)
   SINGLE(1.000)
   ANGRY(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_mike
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
Run 5 of az/oj_easy_mike
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Mike    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (MIKE, OJ)
Seq. 1    Driver:Mike    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (MIKE, OJ)
Seq. 2    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:DRINK (PERSON, OJ)
Seq. 3    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:PART_OF (OJ, BREAKFAST)
Seq. 4    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:HAS (OJ, VITC)
Seq. 5    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:DELICIOUS (OJ)
Seq. 6    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:SMELLS (OJ, REFRESHING)
Seq. 7    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P6:ALERTING (OJ)
Seq. 8    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P7:EXTRINSIC_CAUSE (OJ)
Seq. 9    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P13:DRINK (SALLY, OJ)
Seq. 10    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P12:ISA (SALLY, DIVORCEE)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Mike * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (MIKE, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 

'EFFECT3' (index = 3 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P7') DRINK ('SALLY', OJ) 

'CE-4' (index = 4 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT3' (index = 3 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P7') DRINK ('SALLY', OJ) 

     'CAUSE5' (index = 5 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P8')  


'CAUSE5' (index = 5 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P8')  

EFFECT1 (index = 6 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 

EFFECT2 (index = 7 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'HAS' (OJ, 'VITC') 

EFFECT3 (index = 8 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P3') 'DELICIOUS' (OJ) 

EFFECT4 (index = 9 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P4') 'SMELLS' (OJ, 'REFRESHING') 

EFFECT5 (index = 10 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P5') 'ALERTING' (OJ) 

EFFECT6 (index = 11 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P6') 'EXTRINSIC_CAUSE' (OJ) 


Props:
'P1':  [ 'PART_OF1' + OJ ] [ 'PART_OF2' + 'BREAKFAST' ] 
'P2':  [ 'HAS1' + OJ ] [ 'HAS2' + 'VITC' ] 
'P3':  [ 'DELICIOUS1' + OJ ] 
'P4':  [ 'SMELLS1' + OJ ] [ 'SMELLS2' + 'REFRESHING' ] 
'P5':  [ 'ALERTING1' + OJ ] 
'P6':  [ 'EXTRINSIC_CAUSE1' + OJ ] 
'P7':  [ DRINK1 + 'SALLY' ] [ DRINK2 + OJ ] 
'P8':  [ 'ISA1' + 'SALLY' ] [ 'ISA2' + 'DIVORCEE' ] 

Preds:
'PART_OF1':
   PART1(1.000)
   CONSTITUENT1(1.000)
   COMPONENT1(1.000)
   ELEMENT1(1.000)
   CONTENT1(1.000)

'PART_OF2':
   PART2(1.000)
   CONSTITUENT2(1.000)
   COMPONENT2(1.000)
   ELEMENT2(1.000)
   CONTENT2(1.000)

'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)

'DELICIOUS1':
   TASTE1(1.000)
   GOOD1(1.000)
   YUM1(1.000)
   DELICIOUS1(1.000)
   TASTY1(1.000)
   REFRESHING1(1.000)
   TANGY1(1.000)
   CITRUS1(1.000)
   TART1(1.000)

'SMELLS1':
   ODOR1(1.000)
   SCENT1(1.000)
   SMELL1(1.000)
   OLFACTION1(1.000)
   AROMA1(1.000)
   FRAGRANCE1(1.000)

'SMELLS2':
   ODOR2(1.000)
   SCENT2(1.000)
   SMELL2(1.000)
   OLFACTION2(1.000)
   AROMA2(1.000)
   FRAGRANCE2(1.000)

'ALERTING1':
   AWAKE1(1.000)
        MORNING1(0.500)
        SLEEPY1(0.500)
        WAKES1(0.500)

'EXTRINSIC_CAUSE1':
   HISTORY1(1.000)
        CROPS1(0.500)
        FLORIDA1(0.500)
        GROWERS1(0.500)

'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'BREAKFAST':
   BREAKFAST(1.000)
   MORNING(1.000)
   FOOD(1.000)
   MEAL(1.000)

'VITC':
   BREAKFAST(1.000)
   HEALTH(1.000)
   VITAMIN(1.000)
   OJ(1.000)
   IMMUNE(1.000)

'REFRESHING':
   STATE(1.000)
   FRESH(1.000)
   YUM(1.000)
   ALERT(1.000)
   REFRESHING(1.000)

'SALLY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   YOUNG(1.000)
   TIRED(1.000)
   DIVORCEE(1.000)
   TEEN_MOM(1.000)
   SALLY(1.000)

'DIVORCEE':
   HUMAN(1.000)
   PERSON(1.000)
   MARRIED_ONCE(1.000)
   DIVORCED(1.000)
   SINGLE(1.000)
   ANGRY(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_mike
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
Run 6 of az/oj_easy_mike
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Mike    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (MIKE, OJ)
Seq. 1    Driver:Mike    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (MIKE, OJ)
Seq. 2    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P9:DRINK (LARRY, OJ)
Seq. 3    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P8:HAS (LARRY, FETISH)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Mike * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (MIKE, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P1')  


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P1')  

EFFECT1 (index = 3 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1')  


Props:
'P1':  [ 'HAS1' + MIKE ] [ 'HAS2' + 'FETISH' ] 

Preds:
'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)


Objs:
'FETISH':
        DESIRE(0.500)
   UNUSUAL(1.000)
        FREAKY(0.500)
        SEXUAL(0.500)
        STRONG(0.500)
        COMPULSION(0.500)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_mike
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
Run 7 of az/oj_easy_mike
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Mike    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (MIKE, OJ)
Seq. 1    Driver:Mike    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (MIKE, OJ)
Seq. 2    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P13:DRINK (SALLY, OJ)
Seq. 3    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P12:ISA (SALLY, DIVORCEE)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Mike * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (MIKE, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P1')  


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P1')  

EFFECT1 (index = 3 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1')  


Props:
'P1':  [ 'ISA1' + MIKE ] [ 'ISA2' + 'DIVORCEE' ] 

Preds:
'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'DIVORCEE':
   HUMAN(1.000)
   PERSON(1.000)
   MARRIED_ONCE(1.000)
   DIVORCED(1.000)
   SINGLE(1.000)
   ANGRY(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_mike
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
Run 8 of az/oj_easy_mike
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Mike    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (MIKE, OJ)
Seq. 1    Driver:Mike    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (MIKE, OJ)
Seq. 2    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:DRINK (PERSON, OJ)
Seq. 3    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:PART_OF (OJ, BREAKFAST)
Seq. 4    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:HAS (OJ, VITC)
Seq. 5    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:DELICIOUS (OJ)
Seq. 6    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:SMELLS (OJ, REFRESHING)
Seq. 7    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P6:ALERTING (OJ)
Seq. 8    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P7:EXTRINSIC_CAUSE (OJ)
Seq. 9    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P9:DRINK (LARRY, OJ)
Seq. 10    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P8:HAS (LARRY, FETISH)
Seq. 11    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P11:DRINK (JOAN, OJ)
Seq. 12    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P10:ISA (JOAN, MECHANIC)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Mike * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (MIKE, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 

'EFFECT3' (index = 3 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P7') DRINK ('LARRY', OJ) 

'CE-4' (index = 4 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT3' (index = 3 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P7') DRINK ('LARRY', OJ) 

     'CAUSE5' (index = 5 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P8') 'HAS' ('LARRY', 'FETISH') 


'CAUSE5' (index = 5 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P8') 'HAS' ('LARRY', 'FETISH') 

'EFFECT6' (index = 6 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P9') DRINK ('JOAN', OJ) 

'CE-7' (index = 7 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT6' (index = 6 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P9') DRINK ('JOAN', OJ) 

     'CAUSE8' (index = 8 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P10')  


'CAUSE8' (index = 8 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P10')  

EFFECT1 (index = 9 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 

EFFECT2 (index = 10 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'HAS' (OJ, 'VITC') 

EFFECT3 (index = 11 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P3') 'DELICIOUS' (OJ) 

EFFECT4 (index = 12 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P4') 'SMELLS' (OJ, 'REFRESHING') 

EFFECT5 (index = 13 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P5') 'ALERTING' (OJ) 

EFFECT6 (index = 14 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P6') 'EXTRINSIC_CAUSE' (OJ) 


Props:
'P1':  [ 'PART_OF1' + OJ ] [ 'PART_OF2' + 'BREAKFAST' ] 
'P2':  [ 'HAS1' + OJ ] [ 'HAS2' + 'VITC' ] 
'P3':  [ 'DELICIOUS1' + OJ ] 
'P4':  [ 'SMELLS1' + OJ ] [ 'SMELLS2' + 'REFRESHING' ] 
'P5':  [ 'ALERTING1' + OJ ] 
'P6':  [ 'EXTRINSIC_CAUSE1' + OJ ] 
'P7':  [ DRINK1 + 'LARRY' ] [ DRINK2 + OJ ] 
'P8':  [ 'HAS1' + 'LARRY' ] [ 'HAS2' + 'FETISH' ] 
'P9':  [ DRINK1 + 'JOAN' ] [ DRINK2 + OJ ] 
'P10':  [ 'ISA1' + 'JOAN' ] [ 'ISA2' + 'MECHANIC' ] 

Preds:
'PART_OF1':
   PART1(1.000)
   CONSTITUENT1(1.000)
   COMPONENT1(1.000)
   ELEMENT1(1.000)
   CONTENT1(1.000)

'PART_OF2':
   PART2(1.000)
   CONSTITUENT2(1.000)
   COMPONENT2(1.000)
   ELEMENT2(1.000)
   CONTENT2(1.000)

'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)

'DELICIOUS1':
   TASTE1(1.000)
   GOOD1(1.000)
   YUM1(1.000)
   DELICIOUS1(1.000)
   TASTY1(1.000)
   REFRESHING1(1.000)
   TANGY1(1.000)
   CITRUS1(1.000)
   TART1(1.000)

'SMELLS1':
   ODOR1(1.000)
   SCENT1(1.000)
   SMELL1(1.000)
   OLFACTION1(1.000)
   AROMA1(1.000)
   FRAGRANCE1(1.000)

'SMELLS2':
   ODOR2(1.000)
   SCENT2(1.000)
   SMELL2(1.000)
   OLFACTION2(1.000)
   AROMA2(1.000)
   FRAGRANCE2(1.000)

'ALERTING1':
   AWAKE1(1.000)
        MORNING1(0.500)
        SLEEPY1(0.500)
        WAKES1(0.500)

'EXTRINSIC_CAUSE1':
   HISTORY1(1.000)
        CROPS1(0.500)
        FLORIDA1(0.500)
        GROWERS1(0.500)

'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'BREAKFAST':
   BREAKFAST(1.000)
   MORNING(1.000)
   FOOD(1.000)
   MEAL(1.000)

'VITC':
   BREAKFAST(1.000)
   HEALTH(1.000)
   VITAMIN(1.000)
   OJ(1.000)
   IMMUNE(1.000)

'REFRESHING':
   STATE(1.000)
   FRESH(1.000)
   YUM(1.000)
   ALERT(1.000)
   REFRESHING(1.000)

'LARRY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   MALE(1.000)
   BANKER(1.000)
   DESERVES_DEATH(1.000)
   1%(1.000)
   LARRY(1.000)

'FETISH':
        DESIRE(0.500)
   UNUSUAL(1.000)
        FREAKY(0.500)
        SEXUAL(0.500)
        STRONG(0.500)
        COMPULSION(0.500)

'JOAN':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   OLD(1.000)
   NICE(1.000)
   MOM(1.000)
   MECHANIC(1.000)
   JOAN(1.000)

'MECHANIC':
   HUMAN(1.000)
   PERSON(1.000)
   PROFESSION(1.000)
   CARS(1.000)
   MACHINES(1.000)
   SKILL(1.000)
   TALENT(1.000)
   BLUE_COLLAR(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_mike
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
Run 9 of az/oj_easy_mike
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Mike    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (MIKE, OJ)
Seq. 1    Driver:Mike    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (MIKE, OJ)
Seq. 2    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:DRINK (PERSON, OJ)
Seq. 3    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:PART_OF (OJ, BREAKFAST)
Seq. 4    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:HAS (OJ, VITC)
Seq. 5    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:DELICIOUS (OJ)
Seq. 6    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:SMELLS (OJ, REFRESHING)
Seq. 7    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P6:ALERTING (OJ)
Seq. 8    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P7:EXTRINSIC_CAUSE (OJ)
Seq. 9    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P13:DRINK (SALLY, OJ)
Seq. 10    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P12:ISA (SALLY, DIVORCEE)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Mike * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (MIKE, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 

'EFFECT3' (index = 3 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P7') DRINK ('SALLY', OJ) 

'CE-4' (index = 4 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT3' (index = 3 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P7') DRINK ('SALLY', OJ) 

     'CAUSE5' (index = 5 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P8')  


'CAUSE5' (index = 5 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P8')  

EFFECT1 (index = 6 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 

EFFECT2 (index = 7 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'HAS' (OJ, 'VITC') 

EFFECT3 (index = 8 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P3') 'DELICIOUS' (OJ) 

EFFECT4 (index = 9 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P4') 'SMELLS' (OJ, 'REFRESHING') 

EFFECT5 (index = 10 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P5') 'ALERTING' (OJ) 

EFFECT6 (index = 11 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P6') 'EXTRINSIC_CAUSE' (OJ) 


Props:
'P1':  [ 'PART_OF1' + OJ ] [ 'PART_OF2' + 'BREAKFAST' ] 
'P2':  [ 'HAS1' + OJ ] [ 'HAS2' + 'VITC' ] 
'P3':  [ 'DELICIOUS1' + OJ ] 
'P4':  [ 'SMELLS1' + OJ ] [ 'SMELLS2' + 'REFRESHING' ] 
'P5':  [ 'ALERTING1' + OJ ] 
'P6':  [ 'EXTRINSIC_CAUSE1' + OJ ] 
'P7':  [ DRINK1 + 'SALLY' ] [ DRINK2 + OJ ] 
'P8':  [ 'ISA1' + 'SALLY' ] [ 'ISA2' + 'DIVORCEE' ] 

Preds:
'PART_OF1':
   PART1(1.000)
   CONSTITUENT1(1.000)
   COMPONENT1(1.000)
   ELEMENT1(1.000)
   CONTENT1(1.000)

'PART_OF2':
   PART2(1.000)
   CONSTITUENT2(1.000)
   COMPONENT2(1.000)
   ELEMENT2(1.000)
   CONTENT2(1.000)

'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)

'DELICIOUS1':
   TASTE1(1.000)
   GOOD1(1.000)
   YUM1(1.000)
   DELICIOUS1(1.000)
   TASTY1(1.000)
   REFRESHING1(1.000)
   TANGY1(1.000)
   CITRUS1(1.000)
   TART1(1.000)

'SMELLS1':
   ODOR1(1.000)
   SCENT1(1.000)
   SMELL1(1.000)
   OLFACTION1(1.000)
   AROMA1(1.000)
   FRAGRANCE1(1.000)

'SMELLS2':
   ODOR2(1.000)
   SCENT2(1.000)
   SMELL2(1.000)
   OLFACTION2(1.000)
   AROMA2(1.000)
   FRAGRANCE2(1.000)

'ALERTING1':
   AWAKE1(1.000)
        MORNING1(0.500)
        SLEEPY1(0.500)
        WAKES1(0.500)

'EXTRINSIC_CAUSE1':
   HISTORY1(1.000)
        CROPS1(0.500)
        FLORIDA1(0.500)
        GROWERS1(0.500)

'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'BREAKFAST':
   BREAKFAST(1.000)
   MORNING(1.000)
   FOOD(1.000)
   MEAL(1.000)

'VITC':
   BREAKFAST(1.000)
   HEALTH(1.000)
   VITAMIN(1.000)
   OJ(1.000)
   IMMUNE(1.000)

'REFRESHING':
   STATE(1.000)
   FRESH(1.000)
   YUM(1.000)
   ALERT(1.000)
   REFRESHING(1.000)

'SALLY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   YOUNG(1.000)
   TIRED(1.000)
   DIVORCEE(1.000)
   TEEN_MOM(1.000)
   SALLY(1.000)

'DIVORCEE':
   HUMAN(1.000)
   PERSON(1.000)
   MARRIED_ONCE(1.000)
   DIVORCED(1.000)
   SINGLE(1.000)
   ANGRY(1.000)

Note: Andrei&Zack/OJ_easy.sym
Note: Why do we drink OJ for breakfast?
Note: Low-hanging fruit (or so John thinks)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/oj_easy_mike
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
Run 10 of az/oj_easy_mike
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Mike    Recip :    Fire control:groups (QUESTION)     Goals: EXPLAIN RETRIEVE     Phase set: P1:DRINK (MIKE, OJ)
Seq. 1    Driver:Mike    Recip : WorkSpace    Fire control:groups-d    Goals: EXPLAIN MAP     Phase set: P1:DRINK (MIKE, OJ)
Seq. 2    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P1:DRINK (PERSON, OJ)
Seq. 3    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P2:PART_OF (OJ, BREAKFAST)
Seq. 4    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P3:HAS (OJ, VITC)
Seq. 5    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P4:DELICIOUS (OJ)
Seq. 6    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P5:SMELLS (OJ, REFRESHING)
Seq. 7    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P6:ALERTING (OJ)
Seq. 8    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P7:EXTRINSIC_CAUSE (OJ)
Seq. 9    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P11:DRINK (JOAN, OJ)
Seq. 10    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P10:ISA (JOAN, MECHANIC)
Seq. 11    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P13:DRINK (SALLY, OJ)
Seq. 12    Driver:WorkSpace    Recip : Mike    Fire control:groups-d    Goals: EXPLAIN INFER     Phase set: P12:ISA (SALLY, DIVORCEE)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Mike * * * * *

Groups:
'CE-1' (index = 1 level =1):  
     Semantics: CAUSE-EFFECT (0.778) CS_1.0 (0.778) 

     Groups: 
     QUESTION (index = 0 level =0):  
          Semantics: EFFECT (1.000) 
          Props: P1) DRINK (MIKE, OJ) 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 


'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 'P2') 'HAS' (OJ, 'VITC') 'P3') 'DELICIOUS' (OJ) 'P4') 'SMELLS' (OJ, 'REFRESHING') 'P5') 'ALERTING' (OJ) 'P6') 'EXTRINSIC_CAUSE' (OJ) 

'EFFECT3' (index = 3 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P7') DRINK ('JOAN', OJ) 

'CE-4' (index = 4 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT3' (index = 3 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P7') DRINK ('JOAN', OJ) 

     'CAUSE5' (index = 5 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P8') 'ISA' ('JOAN', 'MECHANIC') 


'CAUSE5' (index = 5 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P8') 'ISA' ('JOAN', 'MECHANIC') 

'EFFECT6' (index = 6 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P9') DRINK ('SALLY', OJ) 

'CE-7' (index = 7 level =1):  
     Semantics: CAUSE-EFFECT (0.725) CS_1.0 (0.725) 

     Groups: 
     'EFFECT6' (index = 6 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P9') DRINK ('SALLY', OJ) 

     'CAUSE8' (index = 8 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P10')  


'CAUSE8' (index = 8 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P10')  

EFFECT1 (index = 9 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P1') 'PART_OF' (OJ, 'BREAKFAST') 

EFFECT2 (index = 10 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P2') 'HAS' (OJ, 'VITC') 

EFFECT3 (index = 11 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P3') 'DELICIOUS' (OJ) 

EFFECT4 (index = 12 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P4') 'SMELLS' (OJ, 'REFRESHING') 

EFFECT5 (index = 13 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P5') 'ALERTING' (OJ) 

EFFECT6 (index = 14 level =0):  
     Semantics: EFFECT (1.000) 
     Props: 'P6') 'EXTRINSIC_CAUSE' (OJ) 


Props:
'P1':  [ 'PART_OF1' + OJ ] [ 'PART_OF2' + 'BREAKFAST' ] 
'P2':  [ 'HAS1' + OJ ] [ 'HAS2' + 'VITC' ] 
'P3':  [ 'DELICIOUS1' + OJ ] 
'P4':  [ 'SMELLS1' + OJ ] [ 'SMELLS2' + 'REFRESHING' ] 
'P5':  [ 'ALERTING1' + OJ ] 
'P6':  [ 'EXTRINSIC_CAUSE1' + OJ ] 
'P7':  [ DRINK1 + 'JOAN' ] [ DRINK2 + OJ ] 
'P8':  [ 'ISA1' + 'JOAN' ] [ 'ISA2' + 'MECHANIC' ] 
'P9':  [ DRINK1 + 'SALLY' ] [ DRINK2 + OJ ] 
'P10':  [ 'ISA1' + 'SALLY' ] [ 'ISA2' + 'DIVORCEE' ] 

Preds:
'PART_OF1':
   PART1(1.000)
   CONSTITUENT1(1.000)
   COMPONENT1(1.000)
   ELEMENT1(1.000)
   CONTENT1(1.000)

'PART_OF2':
   PART2(1.000)
   CONSTITUENT2(1.000)
   COMPONENT2(1.000)
   ELEMENT2(1.000)
   CONTENT2(1.000)

'HAS1':
   STATE1(1.000)
   POSSESS1(1.000)
   HAS1(1.000)
   CONTAINS1(1.000)
   INCLUDES1(1.000)

'HAS2':
   STATE2(1.000)
   POSSESS2(1.000)
   HAS2(1.000)
   CONTAINS2(1.000)
   INCLUDES2(1.000)

'DELICIOUS1':
   TASTE1(1.000)
   GOOD1(1.000)
   YUM1(1.000)
   DELICIOUS1(1.000)
   TASTY1(1.000)
   REFRESHING1(1.000)
   TANGY1(1.000)
   CITRUS1(1.000)
   TART1(1.000)

'SMELLS1':
   ODOR1(1.000)
   SCENT1(1.000)
   SMELL1(1.000)
   OLFACTION1(1.000)
   AROMA1(1.000)
   FRAGRANCE1(1.000)

'SMELLS2':
   ODOR2(1.000)
   SCENT2(1.000)
   SMELL2(1.000)
   OLFACTION2(1.000)
   AROMA2(1.000)
   FRAGRANCE2(1.000)

'ALERTING1':
   AWAKE1(1.000)
        MORNING1(0.500)
        SLEEPY1(0.500)
        WAKES1(0.500)

'EXTRINSIC_CAUSE1':
   HISTORY1(1.000)
        CROPS1(0.500)
        FLORIDA1(0.500)
        GROWERS1(0.500)

'ISA1':
   KIND1(1.000)
   CLASS1(1.000)
   SET1(1.000)
   ISA1(1.000)

'ISA2':
   KIND2(1.000)
   CLASS2(1.000)
   SET2(1.000)
   ISA2(1.000)


Objs:
'BREAKFAST':
   BREAKFAST(1.000)
   MORNING(1.000)
   FOOD(1.000)
   MEAL(1.000)

'VITC':
   BREAKFAST(1.000)
   HEALTH(1.000)
   VITAMIN(1.000)
   OJ(1.000)
   IMMUNE(1.000)

'REFRESHING':
   STATE(1.000)
   FRESH(1.000)
   YUM(1.000)
   ALERT(1.000)
   REFRESHING(1.000)

'JOAN':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   OLD(1.000)
   NICE(1.000)
   MOM(1.000)
   MECHANIC(1.000)
   JOAN(1.000)

'MECHANIC':
   HUMAN(1.000)
   PERSON(1.000)
   PROFESSION(1.000)
   CARS(1.000)
   MACHINES(1.000)
   SKILL(1.000)
   TALENT(1.000)
   BLUE_COLLAR(1.000)

'SALLY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   FEMALE(1.000)
   YOUNG(1.000)
   TIRED(1.000)
   DIVORCEE(1.000)
   TEEN_MOM(1.000)
   SALLY(1.000)

'DIVORCEE':
   HUMAN(1.000)
   PERSON(1.000)
   MARRIED_ONCE(1.000)
   DIVORCED(1.000)
   SINGLE(1.000)
   ANGRY(1.000)

