Note: Andrei&Zack/Schemas/Ex1.sym
Note: Why do we drink OJ for breakfast?
Note: One of the earliest schemas to be learned, e.g., when one is 3.2778 years old
Note: One guy has inherent reason and one idiosyncratic reason
Note: Other guy has same inherent reason and a diff idiosyncratic reason

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/schemas/ex1b
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
Run 1 of az/schemas/ex1b
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 1    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 2    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (SECONDGUY, OJ)
Seq. 3    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (SECONDGUY, OJ)
Seq. 4    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:ISA (SECONDGUY, MECHANIC)
Seq. 5    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 6    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (FIRSTGUY, OJ)
Seq. 7    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:HASA (FIRSTGUY, FETISH)
Seq. 8    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (FIRSTGUY, OJ)
Seq. 9    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (FIRSTGUY, OJ)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From FirstGuy to SecondGuy:
  Groups:
    From CAUSE1 to:    CAUSE1 = 0.979
    From EFFECT1 to:    EFFECT1 = 0.982
    From CE-1 to:    CE-1 = 0.982
  Props:
    From P1 to:    'P3' = 0.879
    From P2 to:    P2 = 0.982
    From P3 to:    'P4' = 0.879
    From 'P3' to:    P1 = 0.879
    From 'P4' to:    P3 = 0.879
  SPs:
    From SP2.1 to:    SP2.1 = 0.992
  Preds:
    From DELICIOUS1 to:    DELICIOUS1 = 0.968
  Objs:
    From OJ to:    OJ = 0.968

From FirstGuy to SchemaEx1b:
  Groups:
  Props:
    From P1 to:    'P1' = 0.990
    From P2 to:    'P0' = 0.982
    From P3 to:    'P3' = 0.990
  SPs:
    From SP1.1 to:    'SP1' = 0.993
    From SP1.2 to:    'SP2' = 0.993
    From SP2.1 to:    'SP0' = 0.992
    From SP3.1 to:    'SP5' = 0.990
    From SP3.2 to:    'SP6' = 0.993
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.968
    From DRINK1 to:    'DRINK1' = 0.970
    From DRINK2 to:    'DRINK2' = 0.970
    From HASA1 to:    'HASA1' = 0.969
    From HASA2 to:    'HASA2' = 0.970
  Objs:
    From OJ to:    'OJ' = 0.970
    From FIRSTGUY to:    'SECONDGUY' = 0.970
    From FETISH to:    'FETISH' = 0.970

From SecondGuy to FirstGuy:
  Groups:
    From CAUSE1 to:    CAUSE1 = 0.979
    From EFFECT1 to:    EFFECT1 = 0.982
    From CE-1 to:    CE-1 = 0.982
  Props:
    From P1 to:    'P3' = 0.879
    From P2 to:    P2 = 0.982
    From P3 to:    'P4' = 0.879
    From 'P3' to:    P1 = 0.879
    From 'P4' to:    P3 = 0.879
  SPs:
    From SP2.1 to:    SP2.1 = 0.992
  Preds:
    From DELICIOUS1 to:    DELICIOUS1 = 0.968
  Objs:
    From OJ to:    OJ = 0.968

From SecondGuy to SchemaEx1b:
  Groups:
    From CAUSE1 to:    'CAUSE1' = 0.969
    From EFFECT1 to:    'EFFECT2' = 0.959
    From CE-1 to:    'CE-0' = 0.982
  Props:
    From P1 to:    'P1' = 0.990
    From P2 to:    'P0' = 0.982
    From P3 to:    'P2' = 0.990
  SPs:
    From SP1.1 to:    'SP1' = 0.993
    From SP1.2 to:    'SP2' = 0.993
    From SP2.1 to:    'SP0' = 0.992
    From SP3.1 to:    'SP3' = 0.990
    From SP3.2 to:    'SP4' = 0.993
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.968
    From DRINK1 to:    'DRINK1' = 0.970
    From DRINK2 to:    'DRINK2' = 0.970
    From ISA1 to:    'ISA1' = 0.969
    From ISA2 to:    'ISA2' = 0.970
  Objs:
    From OJ to:    'OJ' = 0.968
    From SECONDGUY to:    'SECONDGUY' = 0.970
    From MECHANIC to:    'MECHANIC' = 0.970

From SchemaEx1b to FirstGuy:
  Groups:
  Props:
    From 'P0' to:    P2 = 0.982
    From 'P1' to:    P1 = 0.990
    From 'P3' to:    P3 = 0.990
  SPs:
    From 'SP0' to:    SP2.1 = 0.992
    From 'SP1' to:    SP1.1 = 0.993
    From 'SP2' to:    SP1.2 = 0.993
    From 'SP5' to:    SP3.1 = 0.990
    From 'SP6' to:    SP3.2 = 0.993
  Preds:
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.968
    From 'DRINK1' to:    DRINK1 = 0.970
    From 'DRINK2' to:    DRINK2 = 0.970
    From 'HASA1' to:    HASA1 = 0.969
    From 'HASA2' to:    HASA2 = 0.970
  Objs:
    From 'OJ' to:    OJ = 0.970
    From 'SECONDGUY' to:    FIRSTGUY = 0.970
    From 'FETISH' to:    FETISH = 0.970

From SchemaEx1b to SecondGuy:
  Groups:
    From 'CE-0' to:    CE-1 = 0.982
    From 'CAUSE1' to:    CAUSE1 = 0.969
    From 'EFFECT2' to:    EFFECT1 = 0.959
  Props:
    From 'P0' to:    P2 = 0.982
    From 'P1' to:    P1 = 0.990
    From 'P2' to:    P3 = 0.990
  SPs:
    From 'SP0' to:    SP2.1 = 0.992
    From 'SP1' to:    SP1.1 = 0.993
    From 'SP2' to:    SP1.2 = 0.993
    From 'SP3' to:    SP3.1 = 0.990
    From 'SP4' to:    SP3.2 = 0.993
  Preds:
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.968
    From 'DRINK1' to:    DRINK1 = 0.970
    From 'DRINK2' to:    DRINK2 = 0.970
    From 'ISA1' to:    ISA1 = 0.969
    From 'ISA2' to:    ISA2 = 0.970
  Objs:
    From 'OJ' to:    OJ = 0.968
    From 'SECONDGUY' to:    SECONDGUY = 0.970
    From 'MECHANIC' to:    MECHANIC = 0.970



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog FirstGuy * * * * *

Groups:

Props:
'P3':  
'P4':  

Preds:

Objs:

* * * * * Analog SecondGuy * * * * *

Groups:

Props:
'P3':  
'P4':  

Preds:

Objs:

* * * * * Analog SchemaEx1b * * * * *

Groups:
'CE-0' (index = 0 level =1):  
     Semantics: CAUSE-EFFECT (0.781) CS_1.0 (0.781) 

     Groups: 
     'CAUSE1' (index = 1 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P0') 'DELICIOUS' ('OJ') 'P2') 'ISA' ('SECONDGUY', 'MECHANIC') 

     'EFFECT2' (index = 2 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P1') 'DRINK' ('SECONDGUY', 'OJ') 


'CAUSE1' (index = 1 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P0') 'DELICIOUS' ('OJ') 'P2') 'ISA' ('SECONDGUY', 'MECHANIC') 

'EFFECT2' (index = 2 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P1') 'DRINK' ('SECONDGUY', 'OJ') 


Props:
'P0':  [ 'DELICIOUS1' + 'OJ' ] 
'P1':  [ 'DRINK1' + 'SECONDGUY' ] [ 'DRINK2' + 'OJ' ] 
'P2':  [ 'ISA1' + 'SECONDGUY' ] [ 'ISA2' + 'MECHANIC' ] 
'P3':  [ 'HASA1' + 'SECONDGUY' ] [ 'HASA2' + 'FETISH' ] 

Preds:
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
         ORANGE(0.365)
         JUICE(0.365)
         LIQUID(0.365)
         BREAKFAST(0.365)
         MORNING(0.365)

'DRINK1':
        INGEST1(0.500)
        CONSUME1(0.500)
   LIQUID1(1.000)
        SWALLOW1(0.500)

'DRINK2':
        INGEST2(0.500)
        CONSUME2(0.500)
   LIQUID2(1.000)
        SWALLOW2(0.500)

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

'HASA1':
   POSSESSION1(1.000)
   HAS1(1.000)
   PROPERTY1(1.000)

'HASA2':
   POSSESSION2(1.000)
   HAS2(1.000)
   PROPERTY2(1.000)


Objs:
'OJ':
         TASTE1(0.397)
         GOOD1(0.397)
         YUM1(0.397)
         DELICIOUS1(0.397)
         TASTY1(0.397)
         REFRESHING1(0.397)
         TANGY1(0.397)
         CITRUS1(0.397)
         TART1(0.397)
   ORANGE(1.000)
   JUICE(1.000)
   LIQUID(1.000)
   BREAKFAST(1.000)
   MORNING(1.000)

'SECONDGUY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   MALE(1.000)
         BANKER(0.357)
         DESERVES_DEATH(0.357)
         1%(0.357)
         LARRY(0.357)
      MECHANIC(0.681)
      FATHER(0.681)
      DUDE(0.681)

'MECHANIC':
           HUMAN(0.236)
   PERSON(1.000)
           ANIMATE(0.236)
           ALIVE(0.236)
           MALE(0.236)
           BANKER(0.236)
           DESERVES_DEATH(0.236)
           1%(0.236)
           LARRY(0.236)
     PROFESSION(0.835)
     CARS(0.835)
     MACHINES(0.835)
     SKILL(0.835)
     TALENT(0.835)
     BLUE_COLLAR(0.835)

'FETISH':
   PROPERTY(1.000)
   DESIRE(1.000)
   FREAKY(1.000)
   SEXUAL(1.000)
   COMPULSION(1.000)

Note: Andrei&Zack/Schemas/Ex1.sym
Note: Why do we drink OJ for breakfast?
Note: One of the earliest schemas to be learned, e.g., when one is 3.2778 years old
Note: One guy has inherent reason and one idiosyncratic reason
Note: Other guy has same inherent reason and a diff idiosyncratic reason

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/schemas/ex1b
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
Run 2 of az/schemas/ex1b
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (SECONDGUY, OJ)
Seq. 1    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:ISA (SECONDGUY, MECHANIC)
Seq. 2    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:ISA (SECONDGUY, MECHANIC)
Seq. 3    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:ISA (SECONDGUY, MECHANIC)
Seq. 4    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (SECONDGUY, OJ)
Seq. 5    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 6    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 7    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (FIRSTGUY, OJ)
Seq. 8    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:HASA (FIRSTGUY, FETISH)
Seq. 9    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:HASA (FIRSTGUY, FETISH)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From FirstGuy to SecondGuy:
  Groups:
    From CAUSE1 to:    CAUSE1 = 0.982
    From EFFECT1 to:    EFFECT1 = 0.979
    From CE-1 to:    CE-1 = 0.982
  Props:
    From P1 to:    P1 = 0.990
    From P2 to:    'P3' = 0.982
    From P3 to:    P2 = 0.002    'P4' = 0.990
    From 'P3' to:    P3 = 0.990
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    'SP5' = 0.992
    From SP3.1 to:    'SP6' = 0.993
    From SP3.2 to:    'SP7' = 0.993
    From 'SP5' to:    SP3.1 = 0.993
    From 'SP6' to:    SP3.2 = 0.993
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.968
    From DRINK1 to:    DRINK1 = 0.969
    From DRINK2 to:    DRINK2 = 0.969
    From HASA1 to:    'HASA1' = 0.970
    From HASA2 to:    'HASA2' = 0.970
    From 'ISA1' to:    ISA1 = 0.969
    From 'ISA2' to:    ISA2 = 0.969
  Objs:
    From OJ to:    OJ = 0.969
    From FIRSTGUY to:    SECONDGUY = 0.970
    From FETISH to:    'FETISH' = 0.970
    From 'MECHANIC' to:    MECHANIC = 0.969

From FirstGuy to SchemaEx1b:
  Groups:
  Props:
    From P1 to:    'P0' = 0.990
    From P3 to:    'P2' = 0.990
  SPs:
    From SP1.1 to:    'SP0' = 0.993
    From SP1.2 to:    'SP1' = 0.993
    From SP3.1 to:    'SP4' = 0.993
    From SP3.2 to:    'SP5' = 0.993
  Preds:
    From DRINK1 to:    'DRINK1' = 0.969
    From DRINK2 to:    'DRINK2' = 0.969
    From HASA1 to:    'HASA1' = 0.970
    From HASA2 to:    'HASA2' = 0.970
  Objs:
    From OJ to:    'OJ' = 0.969
    From FIRSTGUY to:    'SECONDGUY' = 0.970
    From FETISH to:    'FETISH' = 0.970

From SecondGuy to FirstGuy:
  Groups:
    From CAUSE1 to:    CAUSE1 = 0.982
    From EFFECT1 to:    EFFECT1 = 0.979
    From CE-1 to:    CE-1 = 0.982
  Props:
    From P1 to:    P1 = 0.990
    From P2 to:    P3 = 0.002
    From P3 to:    'P3' = 0.990
    From 'P3' to:    P2 = 0.982
    From 'P4' to:    P3 = 0.990
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP3.1 to:    'SP5' = 0.993
    From SP3.2 to:    'SP6' = 0.993
    From 'SP5' to:    SP2.1 = 0.992
    From 'SP6' to:    SP3.1 = 0.993
    From 'SP7' to:    SP3.2 = 0.993
  Preds:
    From DRINK1 to:    DRINK1 = 0.969
    From DRINK2 to:    DRINK2 = 0.969
    From ISA1 to:    'ISA1' = 0.969
    From ISA2 to:    'ISA2' = 0.969
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.968
    From 'HASA1' to:    HASA1 = 0.970
    From 'HASA2' to:    HASA2 = 0.970
  Objs:
    From OJ to:    OJ = 0.969
    From SECONDGUY to:    FIRSTGUY = 0.970
    From MECHANIC to:    'MECHANIC' = 0.969
    From 'FETISH' to:    FETISH = 0.970

From SecondGuy to SchemaEx1b:
  Groups:
    From CAUSE1 to:    'CAUSE2' = 0.957
    From EFFECT1 to:    'EFFECT1' = 0.969
    From CE-1 to:    'CE-0' = 0.982
  Props:
    From P1 to:    'P0' = 0.990
    From P3 to:    'P1' = 0.990
  SPs:
    From SP1.1 to:    'SP0' = 0.993
    From SP1.2 to:    'SP1' = 0.993
    From SP3.1 to:    'SP2' = 0.993
    From SP3.2 to:    'SP3' = 0.993
  Preds:
    From DRINK1 to:    'DRINK1' = 0.969
    From DRINK2 to:    'DRINK2' = 0.969
    From ISA1 to:    'ISA1' = 0.969
    From ISA2 to:    'ISA2' = 0.969
  Objs:
    From OJ to:    'OJ' = 0.969
    From SECONDGUY to:    'SECONDGUY' = 0.879
    From MECHANIC to:    'MECHANIC' = 0.969

From SchemaEx1b to FirstGuy:
  Groups:
  Props:
    From 'P0' to:    P1 = 0.990
    From 'P2' to:    P3 = 0.990
  SPs:
    From 'SP0' to:    SP1.1 = 0.993
    From 'SP1' to:    SP1.2 = 0.993
    From 'SP4' to:    SP3.1 = 0.993
    From 'SP5' to:    SP3.2 = 0.993
  Preds:
    From 'DRINK1' to:    DRINK1 = 0.969
    From 'DRINK2' to:    DRINK2 = 0.969
    From 'HASA1' to:    HASA1 = 0.970
    From 'HASA2' to:    HASA2 = 0.970
  Objs:
    From 'SECONDGUY' to:    FIRSTGUY = 0.970
    From 'OJ' to:    OJ = 0.969
    From 'FETISH' to:    FETISH = 0.970

From SchemaEx1b to SecondGuy:
  Groups:
    From 'CE-0' to:    CE-1 = 0.982
    From 'EFFECT1' to:    EFFECT1 = 0.969
    From 'CAUSE2' to:    CAUSE1 = 0.957
  Props:
    From 'P0' to:    P1 = 0.990
    From 'P1' to:    P3 = 0.990
  SPs:
    From 'SP0' to:    SP1.1 = 0.993
    From 'SP1' to:    SP1.2 = 0.993
    From 'SP2' to:    SP3.1 = 0.993
    From 'SP3' to:    SP3.2 = 0.993
  Preds:
    From 'DRINK1' to:    DRINK1 = 0.969
    From 'DRINK2' to:    DRINK2 = 0.969
    From 'ISA1' to:    ISA1 = 0.969
    From 'ISA2' to:    ISA2 = 0.969
  Objs:
    From 'SECONDGUY' to:    SECONDGUY = 0.879
    From 'OJ' to:    OJ = 0.969
    From 'MECHANIC' to:    MECHANIC = 0.969



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog FirstGuy * * * * *

Groups:

Props:
'P3':  [ 'ISA1' + FIRSTGUY ] [ 'ISA2' + 'MECHANIC' ] 

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
   PERSON(1.000)
   PROFESSION(1.000)
   CARS(1.000)
   MACHINES(1.000)
   SKILL(1.000)
   TALENT(1.000)
   BLUE_COLLAR(1.000)


* * * * * Analog SecondGuy * * * * *

Groups:

Props:
'P3':  [ 'DELICIOUS1' + OJ ] 
'P4':  [ 'HASA1' + SECONDGUY ] [ 'HASA2' + 'FETISH' ] 

Preds:
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

'HASA1':
   POSSESSION1(1.000)
   HAS1(1.000)
   PROPERTY1(1.000)

'HASA2':
   POSSESSION2(1.000)
   HAS2(1.000)
   PROPERTY2(1.000)


Objs:
'FETISH':
   PROPERTY(1.000)
   DESIRE(1.000)
   FREAKY(1.000)
   SEXUAL(1.000)
   COMPULSION(1.000)


* * * * * Analog SchemaEx1b * * * * *

Groups:
'CE-0' (index = 0 level =1):  
     Semantics: CAUSE-EFFECT (0.781) CS_1.0 (0.781) 

     Groups: 
     'EFFECT1' (index = 1 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P0') 'DRINK' ('SECONDGUY', 'OJ') 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P1') 'ISA' ('SECONDGUY', 'MECHANIC') 


'EFFECT1' (index = 1 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P0') 'DRINK' ('SECONDGUY', 'OJ') 

'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P1') 'ISA' ('SECONDGUY', 'MECHANIC') 


Props:
'P0':  [ 'DRINK1' + 'SECONDGUY' ] [ 'DRINK2' + 'OJ' ] 
'P1':  [ 'ISA1' + 'SECONDGUY' ] [ 'ISA2' + 'MECHANIC' ] 
'P2':  [ 'HASA1' + 'SECONDGUY' ] [ 'HASA2' + 'FETISH' ] 

Preds:
'DRINK1':
        INGEST1(0.500)
        CONSUME1(0.500)
   LIQUID1(1.000)
        SWALLOW1(0.500)
           HUMAN(0.173)
           PERSON(0.173)
           ANIMATE(0.173)
           ALIVE(0.173)
           MALE(0.173)
           BANKER(0.173)
           DESERVES_DEATH(0.173)
           1%(0.173)
           LARRY(0.173)

'DRINK2':
        INGEST2(0.500)
        CONSUME2(0.500)
   LIQUID2(1.000)
        SWALLOW2(0.500)
           ORANGE(0.175)
           JUICE(0.175)
           LIQUID(0.175)
           BREAKFAST(0.175)
           MORNING(0.175)

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

'HASA1':
   POSSESSION1(1.000)
   HAS1(1.000)
   PROPERTY1(1.000)

'HASA2':
   POSSESSION2(1.000)
   HAS2(1.000)
   PROPERTY2(1.000)


Objs:
'SECONDGUY':
         INGEST1(0.416)
         CONSUME1(0.416)
     LIQUID1(0.833)
         SWALLOW1(0.416)
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   MALE(1.000)
         BANKER(0.449)
         DESERVES_DEATH(0.449)
         1%(0.449)
         LARRY(0.449)
       MECHANIC(0.587)
       FATHER(0.587)
       DUDE(0.587)

'OJ':
         INGEST2(0.412)
         CONSUME2(0.412)
     LIQUID2(0.823)
         SWALLOW2(0.412)
   ORANGE(1.000)
   JUICE(1.000)
   LIQUID(1.000)
   BREAKFAST(1.000)
   MORNING(1.000)

'MECHANIC':
   PERSON(1.000)
   PROFESSION(1.000)
   CARS(1.000)
   MACHINES(1.000)
   SKILL(1.000)
   TALENT(1.000)
   BLUE_COLLAR(1.000)

'FETISH':
   PROPERTY(1.000)
   DESIRE(1.000)
   FREAKY(1.000)
   SEXUAL(1.000)
   COMPULSION(1.000)

Note: Andrei&Zack/Schemas/Ex1.sym
Note: Why do we drink OJ for breakfast?
Note: One of the earliest schemas to be learned, e.g., when one is 3.2778 years old
Note: One guy has inherent reason and one idiosyncratic reason
Note: Other guy has same inherent reason and a diff idiosyncratic reason

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/schemas/ex1b
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
Run 3 of az/schemas/ex1b
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (SECONDGUY, OJ)
Seq. 1    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 2    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 3    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:ISA (SECONDGUY, MECHANIC)
Seq. 4    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 5    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:HASA (FIRSTGUY, FETISH)
Seq. 6    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:HASA (FIRSTGUY, FETISH)
Seq. 7    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 8    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (FIRSTGUY, OJ)
Seq. 9    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From FirstGuy to SecondGuy:
  Groups:
    From CAUSE1 to:    CAUSE1 = 0.982
    From EFFECT1 to:    EFFECT1 = 0.979
    From CE-1 to:    CE-1 = 0.982
  Props:
    From P1 to:    P1 = 0.990
    From P2 to:    'P4' = 0.982
    From P3 to:    'P3' = 0.990
    From 'P3' to:    P2 = 0.982
    From 'P4' to:    P3 = 0.990
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    'SP7' = 0.992
    From SP3.1 to:    'SP5' = 0.993
    From SP3.2 to:    'SP6' = 0.993
    From 'SP5' to:    SP2.1 = 0.992
    From 'SP6' to:    SP3.1 = 0.990
    From 'SP7' to:    SP3.2 = 0.993
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.970
    From DRINK1 to:    DRINK1 = 0.969
    From DRINK2 to:    DRINK2 = 0.969
    From HASA1 to:    'HASA1' = 0.969
    From HASA2 to:    'HASA2' = 0.969
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.970
    From 'ISA1' to:    ISA1 = 0.969
    From 'ISA2' to:    ISA2 = 0.970
  Objs:
    From OJ to:    OJ = 0.970
    From FIRSTGUY to:    SECONDGUY = 0.969
    From FETISH to:    'FETISH' = 0.969
    From 'MECHANIC' to:    MECHANIC = 0.970

From FirstGuy to SchemaEx1b:
  Groups:
    From CAUSE1 to:    'CAUSE2' = 0.969
    From EFFECT1 to:    'EFFECT1' = 0.959
    From CE-1 to:    'CE-0' = 0.982
  Props:
    From P1 to:    'P0' = 0.990
    From P2 to:    'P1' = 0.982
  SPs:
    From SP1.1 to:    'SP0' = 0.993
    From SP1.2 to:    'SP1' = 0.993
    From SP2.1 to:    'SP2' = 0.992
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.970
    From DRINK1 to:    'DRINK1' = 0.969
    From DRINK2 to:    'DRINK2' = 0.969
  Objs:
    From OJ to:    'OJ' = 0.970
    From FIRSTGUY to:    'SECONDGUY' = 0.969

From SecondGuy to FirstGuy:
  Groups:
    From CAUSE1 to:    CAUSE1 = 0.982
    From EFFECT1 to:    EFFECT1 = 0.979
    From CE-1 to:    CE-1 = 0.982
  Props:
    From P1 to:    P1 = 0.990
    From P2 to:    'P3' = 0.982
    From P3 to:    'P4' = 0.990
    From 'P3' to:    P3 = 0.990
    From 'P4' to:    P2 = 0.982
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    'SP5' = 0.992
    From SP3.1 to:    'SP6' = 0.990
    From SP3.2 to:    'SP7' = 0.993
    From 'SP5' to:    SP3.1 = 0.993
    From 'SP6' to:    SP3.2 = 0.993
    From 'SP7' to:    SP2.1 = 0.992
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.970
    From DRINK1 to:    DRINK1 = 0.969
    From DRINK2 to:    DRINK2 = 0.969
    From ISA1 to:    'ISA1' = 0.969
    From ISA2 to:    'ISA2' = 0.970
    From 'HASA1' to:    HASA1 = 0.969
    From 'HASA2' to:    HASA2 = 0.969
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.970
  Objs:
    From OJ to:    OJ = 0.970
    From SECONDGUY to:    FIRSTGUY = 0.969
    From MECHANIC to:    'MECHANIC' = 0.970
    From 'FETISH' to:    FETISH = 0.969

From SecondGuy to SchemaEx1b:
  Groups:
    From CAUSE1 to:    'CAUSE2' = 0.969
    From EFFECT1 to:    'EFFECT1' = 0.959
    From CE-1 to:    'CE-0' = 0.982
  Props:
    From P1 to:    'P0' = 0.990
    From P2 to:    'P1' = 0.982
    From P3 to:    'P2' = 0.990
  SPs:
    From SP1.1 to:    'SP0' = 0.993
    From SP1.2 to:    'SP1' = 0.993
    From SP2.1 to:    'SP2' = 0.992
    From SP3.1 to:    'SP3' = 0.990
    From SP3.2 to:    'SP4' = 0.993
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.970
    From DRINK1 to:    'DRINK1' = 0.970
    From DRINK2 to:    'DRINK2' = 0.970
    From ISA1 to:    'ISA1' = 0.969
    From ISA2 to:    'ISA2' = 0.970
  Objs:
    From OJ to:    'OJ' = 0.879
    From SECONDGUY to:    'SECONDGUY' = 0.970
    From MECHANIC to:    'MECHANIC' = 0.970

From SchemaEx1b to FirstGuy:
  Groups:
    From 'CE-0' to:    CE-1 = 0.982
    From 'EFFECT1' to:    EFFECT1 = 0.959
    From 'CAUSE2' to:    CAUSE1 = 0.969
  Props:
    From 'P0' to:    P1 = 0.990
    From 'P1' to:    P2 = 0.982
  SPs:
    From 'SP0' to:    SP1.1 = 0.993
    From 'SP1' to:    SP1.2 = 0.993
    From 'SP2' to:    SP2.1 = 0.992
  Preds:
    From 'DRINK1' to:    DRINK1 = 0.969
    From 'DRINK2' to:    DRINK2 = 0.969
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.970
  Objs:
    From 'SECONDGUY' to:    FIRSTGUY = 0.969
    From 'OJ' to:    OJ = 0.970

From SchemaEx1b to SecondGuy:
  Groups:
    From 'CE-0' to:    CE-1 = 0.982
    From 'EFFECT1' to:    EFFECT1 = 0.959
    From 'CAUSE2' to:    CAUSE1 = 0.969
  Props:
    From 'P0' to:    P1 = 0.990
    From 'P1' to:    P2 = 0.982
    From 'P2' to:    P3 = 0.990
  SPs:
    From 'SP0' to:    SP1.1 = 0.993
    From 'SP1' to:    SP1.2 = 0.993
    From 'SP2' to:    SP2.1 = 0.992
    From 'SP3' to:    SP3.1 = 0.990
    From 'SP4' to:    SP3.2 = 0.993
  Preds:
    From 'DRINK1' to:    DRINK1 = 0.970
    From 'DRINK2' to:    DRINK2 = 0.970
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.970
    From 'ISA1' to:    ISA1 = 0.969
    From 'ISA2' to:    ISA2 = 0.970
  Objs:
    From 'SECONDGUY' to:    SECONDGUY = 0.970
    From 'OJ' to:    OJ = 0.879
    From 'MECHANIC' to:    MECHANIC = 0.970



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog FirstGuy * * * * *

Groups:

Props:
'P3':  [ 'DELICIOUS1' + OJ ] 
'P4':  [ 'ISA1' + FIRSTGUY ] [ 'ISA2' + 'MECHANIC' ] 

Preds:
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
   PERSON(1.000)
   PROFESSION(1.000)
   CARS(1.000)
   MACHINES(1.000)
   SKILL(1.000)
   TALENT(1.000)
   BLUE_COLLAR(1.000)


* * * * * Analog SecondGuy * * * * *

Groups:

Props:
'P3':  [ 'HASA1' + SECONDGUY ] [ 'HASA2' + 'FETISH' ] 
'P4':  [ 'DELICIOUS1' + OJ ] 

Preds:
'HASA1':
   POSSESSION1(1.000)
   HAS1(1.000)
   PROPERTY1(1.000)

'HASA2':
   POSSESSION2(1.000)
   HAS2(1.000)
   PROPERTY2(1.000)

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
           INGEST2(0.177)
           CONSUME2(0.177)
         LIQUID2(0.354)
           SWALLOW2(0.177)
         ORANGE(0.430)
         JUICE(0.430)
         LIQUID(0.430)
         BREAKFAST(0.430)
         MORNING(0.430)


Objs:
'FETISH':
   PROPERTY(1.000)
   DESIRE(1.000)
   FREAKY(1.000)
   SEXUAL(1.000)
   COMPULSION(1.000)


* * * * * Analog SchemaEx1b * * * * *

Groups:
'CE-0' (index = 0 level =1):  
     Semantics: CAUSE-EFFECT (0.875) CS_1.0 (0.875) 

     Groups: 
     'EFFECT1' (index = 1 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P0') 'DRINK' ('SECONDGUY', 'OJ') 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P1') 'DELICIOUS' ('OJ') 'P2') 'ISA' ('SECONDGUY', 'MECHANIC') 


'EFFECT1' (index = 1 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P0') 'DRINK' ('SECONDGUY', 'OJ') 

'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P1') 'DELICIOUS' ('OJ') 'P2') 'ISA' ('SECONDGUY', 'MECHANIC') 


Props:
'P0':  [ 'DRINK1' + 'SECONDGUY' ] [ 'DRINK2' + 'OJ' ] 
'P1':  [ 'DELICIOUS1' + 'OJ' ] 
'P2':  [ 'ISA1' + 'SECONDGUY' ] [ 'ISA2' + 'MECHANIC' ] 

Preds:
'DRINK1':
        INGEST1(0.500)
        CONSUME1(0.500)
   LIQUID1(1.000)
        SWALLOW1(0.500)
           HUMAN(0.173)
           PERSON(0.173)
           ANIMATE(0.173)
           ALIVE(0.173)
           MALE(0.173)
           BANKER(0.173)
           DESERVES_DEATH(0.173)
           1%(0.173)
           LARRY(0.173)

'DRINK2':
        INGEST2(0.500)
        CONSUME2(0.500)
   LIQUID2(1.000)
        SWALLOW2(0.500)
           ORANGE(0.175)
           JUICE(0.175)
           LIQUID(0.175)
           BREAKFAST(0.175)
           MORNING(0.175)

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
'SECONDGUY':
         INGEST1(0.416)
         CONSUME1(0.416)
     LIQUID1(0.833)
         SWALLOW1(0.416)
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   MALE(1.000)
         BANKER(0.449)
         DESERVES_DEATH(0.449)
         1%(0.449)
         LARRY(0.449)
       MECHANIC(0.587)
       FATHER(0.587)
       DUDE(0.587)

'OJ':
         INGEST2(0.412)
         CONSUME2(0.412)
     LIQUID2(0.823)
         SWALLOW2(0.412)
   ORANGE(1.000)
   JUICE(1.000)
   LIQUID(1.000)
   BREAKFAST(1.000)
   MORNING(1.000)

'MECHANIC':
   PERSON(1.000)
   PROFESSION(1.000)
   CARS(1.000)
   MACHINES(1.000)
   SKILL(1.000)
   TALENT(1.000)
   BLUE_COLLAR(1.000)

Note: Andrei&Zack/Schemas/Ex1.sym
Note: Why do we drink OJ for breakfast?
Note: One of the earliest schemas to be learned, e.g., when one is 3.2778 years old
Note: One guy has inherent reason and one idiosyncratic reason
Note: Other guy has same inherent reason and a diff idiosyncratic reason

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/schemas/ex1b
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
Run 4 of az/schemas/ex1b
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 1    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 2    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:ISA (SECONDGUY, MECHANIC)
Seq. 3    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 4    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 5    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (FIRSTGUY, OJ)
Seq. 6    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (FIRSTGUY, OJ)
Seq. 7    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 8    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (FIRSTGUY, OJ)
Seq. 9    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From FirstGuy to SecondGuy:
  Groups:
    From CAUSE1 to:    CAUSE1 = 0.982
    From EFFECT1 to:    EFFECT1 = 0.979
    From CE-1 to:    CE-1 = 0.982
  Props:
    From P1 to:    'P3' = 0.879
    From P2 to:    P2 = 0.982
    From P3 to:
    From 'P3' to:    P3 = 0.879
  SPs:
    From SP2.1 to:    SP2.1 = 0.992
  Preds:
    From DELICIOUS1 to:    DELICIOUS1 = 0.970
  Objs:
    From OJ to:    OJ = 0.970

From FirstGuy to SchemaEx1b:
  Groups:
  Props:
    From P1 to:    'P0' = 0.982
    From P2 to:    'P2' = 0.879
  SPs:
    From SP1.1 to:
    From SP1.2 to:    'SP0' = 0.992
  Preds:
    From DRINK1 to:
    From DRINK2 to:    'DELICIOUS1' = 0.970
  Objs:
    From OJ to:    'OJ' = 0.970
    From FIRSTGUY to:

From SecondGuy to FirstGuy:
  Groups:
    From CAUSE1 to:    CAUSE1 = 0.982
    From EFFECT1 to:    EFFECT1 = 0.979
    From CE-1 to:    CE-1 = 0.982
  Props:
    From P1 to:
    From P2 to:    P2 = 0.982
    From P3 to:    'P3' = 0.879
    From 'P3' to:    P1 = 0.879
  SPs:
    From SP2.1 to:    SP2.1 = 0.992
  Preds:
    From DELICIOUS1 to:    DELICIOUS1 = 0.970
  Objs:
    From OJ to:    OJ = 0.970

From SecondGuy to SchemaEx1b:
  Groups:
    From CAUSE1 to:    'CAUSE1' = 0.967
    From EFFECT1 to:
    From CE-1 to:    'CE-0' = 0.969
  Props:
    From P2 to:    'P0' = 0.982
    From P3 to:    'P1' = 0.990
  SPs:
    From SP2.1 to:    'SP0' = 0.992
    From SP3.1 to:    'SP1' = 0.993
    From SP3.2 to:    'SP2' = 0.993
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.970
    From ISA1 to:    'ISA1' = 0.970
    From ISA2 to:    'ISA2' = 0.970
  Objs:
    From OJ to:    'OJ' = 0.970
    From SECONDGUY to:    'SECONDGUY' = 0.970
    From MECHANIC to:    'MECHANIC' = 0.970

From SchemaEx1b to FirstGuy:
  Groups:
  Props:
    From 'P0' to:    P1 = 0.982
    From 'P2' to:    P2 = 0.879
  SPs:
    From 'SP0' to:    SP1.2 = 0.992
  Preds:
    From 'DELICIOUS1' to:    DRINK2 = 0.970
  Objs:
    From 'OJ' to:    OJ = 0.970

From SchemaEx1b to SecondGuy:
  Groups:
    From 'CE-0' to:    CE-1 = 0.969
    From 'CAUSE1' to:    CAUSE1 = 0.967
  Props:
    From 'P0' to:    P2 = 0.982
    From 'P1' to:    P3 = 0.990
  SPs:
    From 'SP0' to:    SP2.1 = 0.992
    From 'SP1' to:    SP3.1 = 0.993
    From 'SP2' to:    SP3.2 = 0.993
  Preds:
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.970
    From 'ISA1' to:    ISA1 = 0.970
    From 'ISA2' to:    ISA2 = 0.970
  Objs:
    From 'OJ' to:    OJ = 0.970
    From 'SECONDGUY' to:    SECONDGUY = 0.970
    From 'MECHANIC' to:    MECHANIC = 0.970



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog FirstGuy * * * * *

Groups:

Props:
'P3':  

Preds:

Objs:

* * * * * Analog SecondGuy * * * * *

Groups:

Props:
'P3':  

Preds:

Objs:

* * * * * Analog SchemaEx1b * * * * *

Groups:
'CE-0' (index = 0 level =1):  
     Semantics: CAUSE-EFFECT (0.875) CS_1.0 (0.875) 

     Groups: 
     'CAUSE1' (index = 1 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P0') 'DELICIOUS' ('OJ') 'P1') 'ISA' ('SECONDGUY', 'MECHANIC') 


'CAUSE1' (index = 1 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P0') 'DELICIOUS' ('OJ') 'P1') 'ISA' ('SECONDGUY', 'MECHANIC') 


Props:
'P0':  [ 'DELICIOUS1' + 'OJ' ] 
'P1':  [ 'ISA1' + 'SECONDGUY' ] [ 'ISA2' + 'MECHANIC' ] 
'P2':  

Preds:
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
         ORANGE(0.365)
         JUICE(0.365)
         LIQUID(0.365)
         BREAKFAST(0.365)
         MORNING(0.365)

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
'OJ':
         TASTE1(0.397)
         GOOD1(0.397)
         YUM1(0.397)
         DELICIOUS1(0.397)
         TASTY1(0.397)
         REFRESHING1(0.397)
         TANGY1(0.397)
         CITRUS1(0.397)
         TART1(0.397)
   ORANGE(1.000)
   JUICE(1.000)
   LIQUID(1.000)
   BREAKFAST(1.000)
   MORNING(1.000)

'SECONDGUY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   MALE(1.000)
         BANKER(0.357)
         DESERVES_DEATH(0.357)
         1%(0.357)
         LARRY(0.357)
      MECHANIC(0.681)
      FATHER(0.681)
      DUDE(0.681)

'MECHANIC':
           HUMAN(0.236)
   PERSON(1.000)
           ANIMATE(0.236)
           ALIVE(0.236)
           MALE(0.236)
           BANKER(0.236)
           DESERVES_DEATH(0.236)
           1%(0.236)
           LARRY(0.236)
     PROFESSION(0.835)
     CARS(0.835)
     MACHINES(0.835)
     SKILL(0.835)
     TALENT(0.835)
     BLUE_COLLAR(0.835)

Note: Andrei&Zack/Schemas/Ex1.sym
Note: Why do we drink OJ for breakfast?
Note: One of the earliest schemas to be learned, e.g., when one is 3.2778 years old
Note: One guy has inherent reason and one idiosyncratic reason
Note: Other guy has same inherent reason and a diff idiosyncratic reason

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/schemas/ex1b
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
Run 5 of az/schemas/ex1b
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 1    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:ISA (SECONDGUY, MECHANIC)
Seq. 2    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (SECONDGUY, OJ)
Seq. 3    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:ISA (SECONDGUY, MECHANIC)
Seq. 4    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:ISA (SECONDGUY, MECHANIC)
Seq. 5    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:HASA (FIRSTGUY, FETISH)
Seq. 6    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:HASA (FIRSTGUY, FETISH)
Seq. 7    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:HASA (FIRSTGUY, FETISH)
Seq. 8    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 9    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (FIRSTGUY, OJ)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From FirstGuy to SecondGuy:
  Groups:
    From CAUSE1 to:    CAUSE1 = 0.979
    From EFFECT1 to:    EFFECT1 = 0.982
    From CE-1 to:    CE-1 = 0.982
  Props:
    From P1 to:    'P4' = 0.879
    From P2 to:    P2 = 0.982
    From P3 to:    'P3' = 0.879
    From 'P3' to:    P3 = 0.879
    From 'P4' to:    P1 = 0.879
  SPs:
    From SP2.1 to:    SP2.1 = 0.992
  Preds:
    From DELICIOUS1 to:    DELICIOUS1 = 0.970
  Objs:
    From OJ to:    OJ = 0.970

From FirstGuy to SchemaEx1b:
  Groups:
  Props:
    From P3 to:    'P1' = 0.990
  SPs:
    From SP1.1 to:    'SP6' = 0.982
    From SP2.1 to:    'SP5' = 0.879
    From SP3.1 to:    'SP1' = 0.993
    From SP3.2 to:    'SP2' = 0.993
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.879
    From DRINK1 to:    'DRINK1' = 0.969
    From DRINK2 to:    'DRINK2' = 0.879
    From HASA1 to:    'ISA1' = 0.970
    From HASA2 to:    'ISA2' = 0.970
  Objs:
    From OJ to:    'OJ' = 0.879
    From FIRSTGUY to:    'SECONDGUY' = 0.970
    From FETISH to:    'MECHANIC' = 0.970

From SecondGuy to FirstGuy:
  Groups:
    From CAUSE1 to:    CAUSE1 = 0.979
    From EFFECT1 to:    EFFECT1 = 0.982
    From CE-1 to:    CE-1 = 0.982
  Props:
    From P1 to:    'P4' = 0.879
    From P2 to:    P2 = 0.982
    From P3 to:    'P3' = 0.879
    From 'P3' to:    P3 = 0.879
    From 'P4' to:    P1 = 0.879
  SPs:
    From SP2.1 to:    SP2.1 = 0.992
  Preds:
    From DELICIOUS1 to:    DELICIOUS1 = 0.970
  Objs:
    From OJ to:    OJ = 0.970

From SecondGuy to SchemaEx1b:
  Groups:
    From CAUSE1 to:    'CAUSE1' = 0.969
    From EFFECT1 to:    'EFFECT2' = 0.959
    From CE-1 to:    'CE-0' = 0.982
  Props:
    From P1 to:    'P2' = 0.990
    From P2 to:    'P0' = 0.982
    From P3 to:    'P1' = 0.990
  SPs:
    From SP1.1 to:    'SP3' = 0.990
    From SP1.2 to:    'SP4' = 0.990
    From SP2.1 to:    'SP0' = 0.992
    From SP3.1 to:    'SP1' = 0.993
    From SP3.2 to:    'SP2' = 0.993
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.970
    From DRINK1 to:    'DRINK1' = 0.969
    From DRINK2 to:    'DRINK2' = 0.969
    From ISA1 to:    'ISA1' = 0.970
    From ISA2 to:    'ISA2' = 0.970
  Objs:
    From OJ to:    'OJ' = 0.970
    From SECONDGUY to:    'SECONDGUY' = 0.970
    From MECHANIC to:    'MECHANIC' = 0.970

From SchemaEx1b to FirstGuy:
  Groups:
  Props:
    From 'P1' to:    P3 = 0.990
  SPs:
    From 'SP1' to:    SP3.1 = 0.993
    From 'SP2' to:    SP3.2 = 0.993
    From 'SP5' to:    SP2.1 = 0.879
    From 'SP6' to:    SP1.1 = 0.982
  Preds:
    From 'ISA1' to:    HASA1 = 0.970
    From 'ISA2' to:    HASA2 = 0.970
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.879
    From 'DRINK1' to:    DRINK1 = 0.969
    From 'DRINK2' to:    DRINK2 = 0.879
  Objs:
    From 'SECONDGUY' to:    FIRSTGUY = 0.970
    From 'MECHANIC' to:    FETISH = 0.970
    From 'OJ' to:    OJ = 0.879

From SchemaEx1b to SecondGuy:
  Groups:
    From 'CE-0' to:    CE-1 = 0.982
    From 'CAUSE1' to:    CAUSE1 = 0.969
    From 'EFFECT2' to:    EFFECT1 = 0.959
  Props:
    From 'P0' to:    P2 = 0.982
    From 'P1' to:    P3 = 0.990
    From 'P2' to:    P1 = 0.990
  SPs:
    From 'SP0' to:    SP2.1 = 0.992
    From 'SP1' to:    SP3.1 = 0.993
    From 'SP2' to:    SP3.2 = 0.993
    From 'SP3' to:    SP1.1 = 0.990
    From 'SP4' to:    SP1.2 = 0.990
  Preds:
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.970
    From 'ISA1' to:    ISA1 = 0.970
    From 'ISA2' to:    ISA2 = 0.970
    From 'DRINK1' to:    DRINK1 = 0.969
    From 'DRINK2' to:    DRINK2 = 0.969
  Objs:
    From 'OJ' to:    OJ = 0.970
    From 'SECONDGUY' to:    SECONDGUY = 0.970
    From 'MECHANIC' to:    MECHANIC = 0.970



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog FirstGuy * * * * *

Groups:

Props:
'P3':  
'P4':  

Preds:

Objs:

* * * * * Analog SecondGuy * * * * *

Groups:

Props:
'P3':  
'P4':  

Preds:

Objs:

* * * * * Analog SchemaEx1b * * * * *

Groups:
'CE-0' (index = 0 level =1):  
     Semantics: CAUSE-EFFECT (0.781) CS_1.0 (0.781) 

     Groups: 
     'CAUSE1' (index = 1 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P0') 'DELICIOUS' ('OJ') 'P1') 'ISA' ('SECONDGUY', 'MECHANIC') 

     'EFFECT2' (index = 2 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P2') 'DRINK' ('SECONDGUY', 'OJ') 


'CAUSE1' (index = 1 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P0') 'DELICIOUS' ('OJ') 'P1') 'ISA' ('SECONDGUY', 'MECHANIC') 

'EFFECT2' (index = 2 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P2') 'DRINK' ('SECONDGUY', 'OJ') 


Props:
'P0':  [ 'DELICIOUS1' + 'OJ' ] 
'P1':  [ 'ISA1' + 'SECONDGUY' ] [ 'ISA2' + 'MECHANIC' ] 
'P2':  [ 'DRINK1' + 'SECONDGUY' ] [ 'DRINK2' + 'OJ' ] 

Preds:
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
         ORANGE(0.365)
         JUICE(0.365)
         LIQUID(0.365)
         BREAKFAST(0.365)
         MORNING(0.365)

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

'DRINK1':
        INGEST1(0.500)
        CONSUME1(0.500)
   LIQUID1(1.000)
        SWALLOW1(0.500)

'DRINK2':
        INGEST2(0.500)
        CONSUME2(0.500)
   LIQUID2(1.000)
        SWALLOW2(0.500)

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

'DRINK1':
        INGEST1(0.500)
        CONSUME1(0.500)
   LIQUID1(1.000)
        SWALLOW1(0.500)

'DRINK2':
        INGEST2(0.500)
        CONSUME2(0.500)
   LIQUID2(1.000)
        SWALLOW2(0.500)


Objs:
'OJ':
         TASTE1(0.397)
         GOOD1(0.397)
         YUM1(0.397)
         DELICIOUS1(0.397)
         TASTY1(0.397)
         REFRESHING1(0.397)
         TANGY1(0.397)
         CITRUS1(0.397)
         TART1(0.397)
   ORANGE(1.000)
   JUICE(1.000)
   LIQUID(1.000)
   BREAKFAST(1.000)
   MORNING(1.000)

'SECONDGUY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   MALE(1.000)
         BANKER(0.357)
         DESERVES_DEATH(0.357)
         1%(0.357)
         LARRY(0.357)
      MECHANIC(0.681)
      FATHER(0.681)
      DUDE(0.681)

'MECHANIC':
           HUMAN(0.236)
   PERSON(1.000)
           ANIMATE(0.236)
           ALIVE(0.236)
           MALE(0.236)
           BANKER(0.236)
           DESERVES_DEATH(0.236)
           1%(0.236)
           LARRY(0.236)
     PROFESSION(0.835)
     CARS(0.835)
     MACHINES(0.835)
     SKILL(0.835)
     TALENT(0.835)
     BLUE_COLLAR(0.835)

'OJ':
   ORANGE(1.000)
   JUICE(1.000)
   LIQUID(1.000)
   BREAKFAST(1.000)
   MORNING(1.000)

Note: Andrei&Zack/Schemas/Ex1.sym
Note: Why do we drink OJ for breakfast?
Note: One of the earliest schemas to be learned, e.g., when one is 3.2778 years old
Note: One guy has inherent reason and one idiosyncratic reason
Note: Other guy has same inherent reason and a diff idiosyncratic reason

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/schemas/ex1b
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
Run 6 of az/schemas/ex1b
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (SECONDGUY, OJ)
Seq. 1    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 2    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (SECONDGUY, OJ)
Seq. 3    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:ISA (SECONDGUY, MECHANIC)
Seq. 4    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:ISA (SECONDGUY, MECHANIC)
Seq. 5    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 6    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:HASA (FIRSTGUY, FETISH)
Seq. 7    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (FIRSTGUY, OJ)
Seq. 8    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 9    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From FirstGuy to SecondGuy:
  Groups:
    From CAUSE1 to:    CAUSE1 = 0.982
    From EFFECT1 to:    EFFECT1 = 0.979
    From CE-1 to:    CE-1 = 0.982
  Props:
    From P1 to:    P1 = 0.990
    From P2 to:    'P3' = 0.982
    From P3 to:    'P4' = 0.990
    From 'P3' to:    P2 = 0.982
    From 'P4' to:    P3 = 0.990
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    'SP5' = 0.992
    From SP3.1 to:    'SP6' = 0.990
    From SP3.2 to:    'SP7' = 0.993
    From 'SP5' to:    SP2.1 = 0.987
    From 'SP6' to:    SP3.1 = 0.993
    From 'SP7' to:    SP3.2 = 0.993
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.970
    From DRINK1 to:    DRINK1 = 0.969
    From DRINK2 to:    DRINK2 = 0.969
    From HASA1 to:    'HASA1' = 0.968
    From HASA2 to:    'HASA2' = 0.968
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.969
    From 'ISA1' to:    ISA1 = 0.969
    From 'ISA2' to:    ISA2 = 0.969
  Objs:
    From OJ to:    OJ = 0.970
    From FIRSTGUY to:    SECONDGUY = 0.969
    From FETISH to:    'FETISH' = 0.968
    From 'MECHANIC' to:    MECHANIC = 0.969

From FirstGuy to SchemaEx1b:
  Groups:
  Props:
    From P1 to:    'P0' = 0.990
    From P2 to:    'P1' = 0.982
  SPs:
    From SP1.1 to:    'SP0' = 0.993
    From SP1.2 to:    'SP1' = 0.993
    From SP2.1 to:    'SP2' = 0.992
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.970
    From DRINK1 to:    'DRINK1' = 0.969
    From DRINK2 to:    'DRINK2' = 0.969
  Objs:
    From OJ to:    'OJ' = 0.970
    From FIRSTGUY to:    'SECONDGUY' = 0.969

From SecondGuy to FirstGuy:
  Groups:
    From CAUSE1 to:    CAUSE1 = 0.982
    From EFFECT1 to:    EFFECT1 = 0.979
    From CE-1 to:    CE-1 = 0.982
  Props:
    From P1 to:    P1 = 0.990
    From P2 to:    'P3' = 0.982
    From P3 to:    'P4' = 0.990
    From 'P3' to:    P2 = 0.982
    From 'P4' to:    P3 = 0.990
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    'SP5' = 0.987
    From SP3.1 to:    'SP6' = 0.993
    From SP3.2 to:    'SP7' = 0.993
    From 'SP5' to:    SP2.1 = 0.992
    From 'SP6' to:    SP3.1 = 0.990
    From 'SP7' to:    SP3.2 = 0.993
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.969
    From DRINK1 to:    DRINK1 = 0.969
    From DRINK2 to:    DRINK2 = 0.969
    From ISA1 to:    'ISA1' = 0.969
    From ISA2 to:    'ISA2' = 0.969
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.970
    From 'HASA1' to:    HASA1 = 0.968
    From 'HASA2' to:    HASA2 = 0.968
  Objs:
    From OJ to:    OJ = 0.970
    From SECONDGUY to:    FIRSTGUY = 0.969
    From MECHANIC to:    'MECHANIC' = 0.969
    From 'FETISH' to:    FETISH = 0.968

From SecondGuy to SchemaEx1b:
  Groups:
    From CAUSE1 to:    'CAUSE2' = 0.969
    From EFFECT1 to:    'EFFECT1' = 0.957
    From CE-1 to:    'CE-0' = 0.982
  Props:
    From P1 to:    'P0' = 0.990
    From P2 to:    'P1' = 0.982
    From P3 to:    'P2' = 0.990
  SPs:
    From SP1.1 to:    'SP0' = 0.993
    From SP1.2 to:    'SP1' = 0.993
    From SP2.1 to:    'SP2' = 0.987
    From SP3.1 to:    'SP3' = 0.993
    From SP3.2 to:    'SP4' = 0.993
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.969
    From DRINK1 to:    'DRINK1' = 0.969
    From DRINK2 to:    'DRINK2' = 0.969
    From ISA1 to:    'ISA1' = 0.969
    From ISA2 to:    'ISA2' = 0.969
  Objs:
    From OJ to:    'OJ' = 0.879
    From SECONDGUY to:    'SECONDGUY' = 0.969
    From MECHANIC to:    'MECHANIC' = 0.969

From SchemaEx1b to FirstGuy:
  Groups:
  Props:
    From 'P0' to:    P1 = 0.990
    From 'P1' to:    P2 = 0.982
  SPs:
    From 'SP0' to:    SP1.1 = 0.993
    From 'SP1' to:    SP1.2 = 0.993
    From 'SP2' to:    SP2.1 = 0.992
  Preds:
    From 'DRINK1' to:    DRINK1 = 0.969
    From 'DRINK2' to:    DRINK2 = 0.969
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.970
  Objs:
    From 'SECONDGUY' to:    FIRSTGUY = 0.969
    From 'OJ' to:    OJ = 0.970

From SchemaEx1b to SecondGuy:
  Groups:
    From 'CE-0' to:    CE-1 = 0.982
    From 'EFFECT1' to:    EFFECT1 = 0.957
    From 'CAUSE2' to:    CAUSE1 = 0.969
  Props:
    From 'P0' to:    P1 = 0.990
    From 'P1' to:    P2 = 0.982
    From 'P2' to:    P3 = 0.990
  SPs:
    From 'SP0' to:    SP1.1 = 0.993
    From 'SP1' to:    SP1.2 = 0.993
    From 'SP2' to:    SP2.1 = 0.987
    From 'SP3' to:    SP3.1 = 0.993
    From 'SP4' to:    SP3.2 = 0.993
  Preds:
    From 'DRINK1' to:    DRINK1 = 0.969
    From 'DRINK2' to:    DRINK2 = 0.969
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.969
    From 'ISA1' to:    ISA1 = 0.969
    From 'ISA2' to:    ISA2 = 0.969
  Objs:
    From 'SECONDGUY' to:    SECONDGUY = 0.969
    From 'OJ' to:    OJ = 0.879
    From 'MECHANIC' to:    MECHANIC = 0.969



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog FirstGuy * * * * *

Groups:

Props:
'P3':  [ 'DELICIOUS1' + OJ ] 
'P4':  [ 'ISA1' + FIRSTGUY ] [ 'ISA2' + 'MECHANIC' ] 

Preds:
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
   PERSON(1.000)
   PROFESSION(1.000)
   CARS(1.000)
   MACHINES(1.000)
   SKILL(1.000)
   TALENT(1.000)
   BLUE_COLLAR(1.000)


* * * * * Analog SecondGuy * * * * *

Groups:

Props:
'P3':  [ 'DELICIOUS1' + OJ ] 
'P4':  [ 'HASA1' + SECONDGUY ] [ 'HASA2' + 'FETISH' ] 

Preds:
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
           INGEST2(0.177)
           CONSUME2(0.177)
         LIQUID2(0.354)
           SWALLOW2(0.177)
         ORANGE(0.430)
         JUICE(0.430)
         LIQUID(0.430)
         BREAKFAST(0.430)
         MORNING(0.430)

'HASA1':
   POSSESSION1(1.000)
   HAS1(1.000)
   PROPERTY1(1.000)

'HASA2':
   POSSESSION2(1.000)
   HAS2(1.000)
   PROPERTY2(1.000)


Objs:
'FETISH':
   PROPERTY(1.000)
   DESIRE(1.000)
   FREAKY(1.000)
   SEXUAL(1.000)
   COMPULSION(1.000)


* * * * * Analog SchemaEx1b * * * * *

Groups:
'CE-0' (index = 0 level =1):  
     Semantics: CAUSE-EFFECT (0.781) CS_1.0 (0.781) 

     Groups: 
     'EFFECT1' (index = 1 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P0') 'DRINK' ('SECONDGUY', 'OJ') 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P1') 'DELICIOUS' ('OJ') 'P2') 'ISA' ('SECONDGUY', 'MECHANIC') 


'EFFECT1' (index = 1 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P0') 'DRINK' ('SECONDGUY', 'OJ') 

'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P1') 'DELICIOUS' ('OJ') 'P2') 'ISA' ('SECONDGUY', 'MECHANIC') 


Props:
'P0':  [ 'DRINK1' + 'SECONDGUY' ] [ 'DRINK2' + 'OJ' ] 
'P1':  [ 'DELICIOUS1' + 'OJ' ] 
'P2':  [ 'ISA1' + 'SECONDGUY' ] [ 'ISA2' + 'MECHANIC' ] 

Preds:
'DRINK1':
        INGEST1(0.500)
        CONSUME1(0.500)
   LIQUID1(1.000)
        SWALLOW1(0.500)
           HUMAN(0.173)
           PERSON(0.173)
           ANIMATE(0.173)
           ALIVE(0.173)
           MALE(0.173)
           BANKER(0.173)
           DESERVES_DEATH(0.173)
           1%(0.173)
           LARRY(0.173)

'DRINK2':
        INGEST2(0.500)
        CONSUME2(0.500)
   LIQUID2(1.000)
        SWALLOW2(0.500)
           ORANGE(0.175)
           JUICE(0.175)
           LIQUID(0.175)
           BREAKFAST(0.175)
           MORNING(0.175)

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
'SECONDGUY':
         INGEST1(0.416)
         CONSUME1(0.416)
     LIQUID1(0.833)
         SWALLOW1(0.416)
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   MALE(1.000)
         BANKER(0.449)
         DESERVES_DEATH(0.449)
         1%(0.449)
         LARRY(0.449)
       MECHANIC(0.587)
       FATHER(0.587)
       DUDE(0.587)

'OJ':
         INGEST2(0.412)
         CONSUME2(0.412)
     LIQUID2(0.823)
         SWALLOW2(0.412)
   ORANGE(1.000)
   JUICE(1.000)
   LIQUID(1.000)
   BREAKFAST(1.000)
   MORNING(1.000)

'MECHANIC':
   PERSON(1.000)
   PROFESSION(1.000)
   CARS(1.000)
   MACHINES(1.000)
   SKILL(1.000)
   TALENT(1.000)
   BLUE_COLLAR(1.000)

Note: Andrei&Zack/Schemas/Ex1.sym
Note: Why do we drink OJ for breakfast?
Note: One of the earliest schemas to be learned, e.g., when one is 3.2778 years old
Note: One guy has inherent reason and one idiosyncratic reason
Note: Other guy has same inherent reason and a diff idiosyncratic reason

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/schemas/ex1b
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
Run 7 of az/schemas/ex1b
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (SECONDGUY, OJ)
Seq. 1    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (SECONDGUY, OJ)
Seq. 2    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (SECONDGUY, OJ)
Seq. 3    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 4    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (SECONDGUY, OJ)
Seq. 5    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:HASA (FIRSTGUY, FETISH)
Seq. 6    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (FIRSTGUY, OJ)
Seq. 7    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 8    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 9    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (FIRSTGUY, OJ)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From FirstGuy to SecondGuy:
  Groups:
    From CAUSE1 to:    CAUSE1 = 0.979
    From EFFECT1 to:    EFFECT1 = 0.982
    From CE-1 to:    CE-1 = 0.982
  Props:
    From P1 to:    P1 = 0.990
    From P2 to:    'P4' = 0.982
    From P3 to:    P3 = 0.002    'P3' = 0.990
    From 'P3' to:    P2 = 0.982
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    'SP7' = 0.992
    From SP3.1 to:    'SP5' = 0.990
    From SP3.2 to:    'SP6' = 0.993
    From 'SP5' to:    SP2.1 = 0.987
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.970
    From DRINK1 to:    DRINK1 = 0.968
    From DRINK2 to:    DRINK2 = 0.968
    From HASA1 to:    'HASA1' = 0.968
    From HASA2 to:    'HASA2' = 0.968
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.969
  Objs:
    From OJ to:    OJ = 0.968
    From FIRSTGUY to:    SECONDGUY = 0.968
    From FETISH to:    'FETISH' = 0.968

From FirstGuy to SchemaEx1b:
  Groups:
  Props:
    From P1 to:    'P0' = 0.990
    From P2 to:    'P2' = 0.982
  SPs:
    From SP1.1 to:    'SP0' = 0.993
    From SP1.2 to:    'SP1' = 0.993
    From SP2.1 to:    'SP3' = 0.992
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.879    'DELICIOUS1' = 0.970
    From DRINK1 to:    'DRINK1' = 0.968
    From DRINK2 to:    'DRINK2' = 0.968
  Objs:
    From OJ to:    'OJ' = 0.968
    From FIRSTGUY to:    'SECONDGUY' = 0.968

From SecondGuy to FirstGuy:
  Groups:
    From CAUSE1 to:    CAUSE1 = 0.979
    From EFFECT1 to:    EFFECT1 = 0.982
    From CE-1 to:    CE-1 = 0.982
  Props:
    From P1 to:    P1 = 0.990
    From P2 to:    'P3' = 0.982
    From P3 to:    P3 = 0.002
    From 'P3' to:    P3 = 0.990
    From 'P4' to:    P2 = 0.982
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    'SP5' = 0.987
    From 'SP5' to:    SP3.1 = 0.990
    From 'SP6' to:    SP3.2 = 0.993
    From 'SP7' to:    SP2.1 = 0.992
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.969
    From DRINK1 to:    DRINK1 = 0.968
    From DRINK2 to:    DRINK2 = 0.968
    From 'HASA1' to:    HASA1 = 0.968
    From 'HASA2' to:    HASA2 = 0.968
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.970
  Objs:
    From OJ to:    OJ = 0.968
    From SECONDGUY to:    FIRSTGUY = 0.968
    From 'FETISH' to:    FETISH = 0.968

From SecondGuy to SchemaEx1b:
  Groups:
    From CAUSE1 to:    'CAUSE2' = 0.957
    From EFFECT1 to:    'EFFECT1' = 0.969
    From CE-1 to:    'CE-0' = 0.982
  Props:
    From P1 to:    'P0' = 0.990
    From P2 to:    'P1' = 0.982
  SPs:
    From SP1.1 to:    'SP0' = 0.993
    From SP1.2 to:    'SP1' = 0.993
    From SP2.1 to:    'SP2' = 0.987
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.969
    From DRINK1 to:    'DRINK1' = 0.968
    From DRINK2 to:    'DRINK2' = 0.968
  Objs:
    From OJ to:    'OJ' = 0.968
    From SECONDGUY to:    'SECONDGUY' = 0.968

From SchemaEx1b to FirstGuy:
  Groups:
  Props:
    From 'P0' to:    P1 = 0.990
    From 'P2' to:    P2 = 0.982
  SPs:
    From 'SP0' to:    SP1.1 = 0.993
    From 'SP1' to:    SP1.2 = 0.993
    From 'SP3' to:    SP2.1 = 0.992
  Preds:
    From 'DRINK1' to:    DRINK1 = 0.968
    From 'DRINK2' to:    DRINK2 = 0.968
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.970
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.879
  Objs:
    From 'SECONDGUY' to:    FIRSTGUY = 0.968
    From 'OJ' to:    OJ = 0.968

From SchemaEx1b to SecondGuy:
  Groups:
    From 'CE-0' to:    CE-1 = 0.982
    From 'EFFECT1' to:    EFFECT1 = 0.969
    From 'CAUSE2' to:    CAUSE1 = 0.957
  Props:
    From 'P0' to:    P1 = 0.990
    From 'P1' to:    P2 = 0.982
  SPs:
    From 'SP0' to:    SP1.1 = 0.993
    From 'SP1' to:    SP1.2 = 0.993
    From 'SP2' to:    SP2.1 = 0.987
  Preds:
    From 'DRINK1' to:    DRINK1 = 0.968
    From 'DRINK2' to:    DRINK2 = 0.968
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.969
  Objs:
    From 'SECONDGUY' to:    SECONDGUY = 0.968
    From 'OJ' to:    OJ = 0.968



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog FirstGuy * * * * *

Groups:

Props:
'P3':  [ 'DELICIOUS1' + OJ ] 

Preds:
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


Objs:

* * * * * Analog SecondGuy * * * * *

Groups:

Props:
'P3':  [ 'HASA1' + SECONDGUY ] [ 'HASA2' + 'FETISH' ] 
'P4':  [ 'DELICIOUS1' + OJ ] 

Preds:
'HASA1':
   POSSESSION1(1.000)
   HAS1(1.000)
   PROPERTY1(1.000)

'HASA2':
   POSSESSION2(1.000)
   HAS2(1.000)
   PROPERTY2(1.000)

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


Objs:
'FETISH':
   PROPERTY(1.000)
   DESIRE(1.000)
   FREAKY(1.000)
   SEXUAL(1.000)
   COMPULSION(1.000)


* * * * * Analog SchemaEx1b * * * * *

Groups:
'CE-0' (index = 0 level =1):  
     Semantics: CAUSE-EFFECT (0.781) CS_1.0 (0.781) 

     Groups: 
     'EFFECT1' (index = 1 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P0') 'DRINK' ('SECONDGUY', 'OJ') 

     'CAUSE2' (index = 2 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P1') 'DELICIOUS' ('OJ') 


'EFFECT1' (index = 1 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P0') 'DRINK' ('SECONDGUY', 'OJ') 

'CAUSE2' (index = 2 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P1') 'DELICIOUS' ('OJ') 


Props:
'P0':  [ 'DRINK1' + 'SECONDGUY' ] [ 'DRINK2' + 'OJ' ] 
'P1':  [ 'DELICIOUS1' + 'OJ' ] 
'P2':  [ 'DELICIOUS1' + 'OJ' ] 

Preds:
'DRINK1':
        INGEST1(0.500)
        CONSUME1(0.500)
   LIQUID1(1.000)
        SWALLOW1(0.500)
           HUMAN(0.173)
           PERSON(0.173)
           ANIMATE(0.173)
           ALIVE(0.173)
           MALE(0.173)
           BANKER(0.173)
           DESERVES_DEATH(0.173)
           1%(0.173)
           LARRY(0.173)

'DRINK2':
        INGEST2(0.500)
        CONSUME2(0.500)
   LIQUID2(1.000)
        SWALLOW2(0.500)
           ORANGE(0.175)
           JUICE(0.175)
           LIQUID(0.175)
           BREAKFAST(0.175)
           MORNING(0.175)

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


Objs:
'SECONDGUY':
         INGEST1(0.416)
         CONSUME1(0.416)
     LIQUID1(0.833)
         SWALLOW1(0.416)
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   MALE(1.000)
         BANKER(0.449)
         DESERVES_DEATH(0.449)
         1%(0.449)
         LARRY(0.449)
       MECHANIC(0.587)
       FATHER(0.587)
       DUDE(0.587)

'OJ':
         INGEST2(0.412)
         CONSUME2(0.412)
     LIQUID2(0.823)
         SWALLOW2(0.412)
   ORANGE(1.000)
   JUICE(1.000)
   LIQUID(1.000)
   BREAKFAST(1.000)
   MORNING(1.000)

Note: Andrei&Zack/Schemas/Ex1.sym
Note: Why do we drink OJ for breakfast?
Note: One of the earliest schemas to be learned, e.g., when one is 3.2778 years old
Note: One guy has inherent reason and one idiosyncratic reason
Note: Other guy has same inherent reason and a diff idiosyncratic reason

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/schemas/ex1b
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
Run 8 of az/schemas/ex1b
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 1    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (SECONDGUY, OJ)
Seq. 2    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:ISA (SECONDGUY, MECHANIC)
Seq. 3    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (SECONDGUY, OJ)
Seq. 4    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 5    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:HASA (FIRSTGUY, FETISH)
Seq. 6    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 7    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 8    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (FIRSTGUY, OJ)
Seq. 9    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (FIRSTGUY, OJ)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From FirstGuy to SecondGuy:
  Groups:
    From CAUSE1 to:    CAUSE1 = 0.979
    From EFFECT1 to:    EFFECT1 = 0.982
    From CE-1 to:    CE-1 = 0.982
  Props:
    From P1 to:    'P4' = 0.879
    From P2 to:    P2 = 0.982
    From P3 to:    'P3' = 0.879
    From 'P3' to:    P1 = 0.879
    From 'P4' to:    P3 = 0.879
  SPs:
    From SP2.1 to:    SP2.1 = 0.992
  Preds:
    From DELICIOUS1 to:    DELICIOUS1 = 0.968
  Objs:
    From OJ to:    OJ = 0.968

From FirstGuy to SchemaEx1b:
  Groups:
  Props:
    From P3 to:    'P2' = 0.990
  SPs:
    From SP1.1 to:    'SP6' = 0.982
    From SP1.2 to:    'SP7' = 0.879
    From SP2.1 to:    'SP5' = 0.879
    From SP3.1 to:    'SP3' = 0.993
    From SP3.2 to:    'SP4' = 0.993
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.879
    From DRINK1 to:    'DRINK1' = 0.969
    From DRINK2 to:    'DRINK2' = 0.879
    From HASA1 to:    'ISA1' = 0.959
    From HASA2 to:    'ISA2' = 0.959
  Objs:
    From OJ to:    'OJ' = 0.879
    From FIRSTGUY to:    'SECONDGUY' = 0.970
    From FETISH to:    'MECHANIC' = 0.959

From SecondGuy to FirstGuy:
  Groups:
    From CAUSE1 to:    CAUSE1 = 0.979
    From EFFECT1 to:    EFFECT1 = 0.982
    From CE-1 to:    CE-1 = 0.982
  Props:
    From P1 to:    'P3' = 0.879
    From P2 to:    P2 = 0.982
    From P3 to:    'P4' = 0.879
    From 'P3' to:    P3 = 0.879
    From 'P4' to:    P1 = 0.879
  SPs:
    From SP2.1 to:    SP2.1 = 0.992
  Preds:
    From DELICIOUS1 to:    DELICIOUS1 = 0.968
  Objs:
    From OJ to:    OJ = 0.968

From SecondGuy to SchemaEx1b:
  Groups:
    From CAUSE1 to:    'CAUSE1' = 0.969
    From EFFECT1 to:    'EFFECT2' = 0.957
    From CE-1 to:    'CE-0' = 0.982
  Props:
    From P1 to:    'P1' = 0.990
    From P2 to:    'P0' = 0.982
    From P3 to:    'P2' = 0.990
  SPs:
    From SP1.1 to:    'SP1' = 0.993
    From SP1.2 to:    'SP2' = 0.993
    From SP2.1 to:    'SP0' = 0.992
    From SP3.1 to:    'SP3' = 0.990
    From SP3.2 to:    'SP4' = 0.993
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.970
    From DRINK1 to:    'DRINK1' = 0.970
    From DRINK2 to:    'DRINK2' = 0.970
    From ISA1 to:    'ISA1' = 0.969
    From ISA2 to:    'ISA2' = 0.970
  Objs:
    From OJ to:    'OJ' = 0.970
    From SECONDGUY to:    'SECONDGUY' = 0.970
    From MECHANIC to:    'MECHANIC' = 0.970

From SchemaEx1b to FirstGuy:
  Groups:
  Props:
    From 'P2' to:    P3 = 0.990
  SPs:
    From 'SP3' to:    SP3.1 = 0.993
    From 'SP4' to:    SP3.2 = 0.993
    From 'SP5' to:    SP2.1 = 0.879
    From 'SP6' to:    SP1.1 = 0.982
    From 'SP7' to:    SP1.2 = 0.879
  Preds:
    From 'ISA1' to:    HASA1 = 0.959
    From 'ISA2' to:    HASA2 = 0.959
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.879
    From 'DRINK1' to:    DRINK1 = 0.969
    From 'DRINK2' to:    DRINK2 = 0.879
  Objs:
    From 'SECONDGUY' to:    FIRSTGUY = 0.970
    From 'MECHANIC' to:    FETISH = 0.959
    From 'OJ' to:    OJ = 0.879

From SchemaEx1b to SecondGuy:
  Groups:
    From 'CE-0' to:    CE-1 = 0.982
    From 'CAUSE1' to:    CAUSE1 = 0.969
    From 'EFFECT2' to:    EFFECT1 = 0.957
  Props:
    From 'P0' to:    P2 = 0.982
    From 'P1' to:    P1 = 0.990
    From 'P2' to:    P3 = 0.990
  SPs:
    From 'SP0' to:    SP2.1 = 0.992
    From 'SP1' to:    SP1.1 = 0.993
    From 'SP2' to:    SP1.2 = 0.993
    From 'SP3' to:    SP3.1 = 0.990
    From 'SP4' to:    SP3.2 = 0.993
  Preds:
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.970
    From 'DRINK1' to:    DRINK1 = 0.970
    From 'DRINK2' to:    DRINK2 = 0.970
    From 'ISA1' to:    ISA1 = 0.969
    From 'ISA2' to:    ISA2 = 0.970
  Objs:
    From 'OJ' to:    OJ = 0.970
    From 'SECONDGUY' to:    SECONDGUY = 0.970
    From 'MECHANIC' to:    MECHANIC = 0.970



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog FirstGuy * * * * *

Groups:

Props:
'P3':  
'P4':  

Preds:

Objs:

* * * * * Analog SecondGuy * * * * *

Groups:

Props:
'P3':  
'P4':  

Preds:

Objs:

* * * * * Analog SchemaEx1b * * * * *

Groups:
'CE-0' (index = 0 level =1):  
     Semantics: CAUSE-EFFECT (0.875) CS_1.0 (0.875) 

     Groups: 
     'CAUSE1' (index = 1 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P0') 'DELICIOUS' ('OJ') 'P2') 'ISA' ('SECONDGUY', 'MECHANIC') 

     'EFFECT2' (index = 2 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P1') 'DRINK' ('SECONDGUY', 'OJ') 


'CAUSE1' (index = 1 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P0') 'DELICIOUS' ('OJ') 'P2') 'ISA' ('SECONDGUY', 'MECHANIC') 

'EFFECT2' (index = 2 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P1') 'DRINK' ('SECONDGUY', 'OJ') 


Props:
'P0':  [ 'DELICIOUS1' + 'OJ' ] 
'P1':  [ 'DRINK1' + 'SECONDGUY' ] [ 'DRINK2' + 'OJ' ] 
'P2':  [ 'ISA1' + 'SECONDGUY' ] [ 'ISA2' + 'MECHANIC' ] 

Preds:
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
         ORANGE(0.365)
         JUICE(0.365)
         LIQUID(0.365)
         BREAKFAST(0.365)
         MORNING(0.365)

'DRINK1':
        INGEST1(0.500)
        CONSUME1(0.500)
   LIQUID1(1.000)
        SWALLOW1(0.500)

'DRINK2':
        INGEST2(0.500)
        CONSUME2(0.500)
   LIQUID2(1.000)
        SWALLOW2(0.500)

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

'DRINK1':
        INGEST1(0.500)
        CONSUME1(0.500)
   LIQUID1(1.000)
        SWALLOW1(0.500)

'DRINK2':
        INGEST2(0.500)
        CONSUME2(0.500)
   LIQUID2(1.000)
        SWALLOW2(0.500)


Objs:
'OJ':
         TASTE1(0.397)
         GOOD1(0.397)
         YUM1(0.397)
         DELICIOUS1(0.397)
         TASTY1(0.397)
         REFRESHING1(0.397)
         TANGY1(0.397)
         CITRUS1(0.397)
         TART1(0.397)
   ORANGE(1.000)
   JUICE(1.000)
   LIQUID(1.000)
   BREAKFAST(1.000)
   MORNING(1.000)

'SECONDGUY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   MALE(1.000)
         BANKER(0.357)
         DESERVES_DEATH(0.357)
         1%(0.357)
         LARRY(0.357)
      MECHANIC(0.681)
      FATHER(0.681)
      DUDE(0.681)

'MECHANIC':
           HUMAN(0.236)
   PERSON(1.000)
           ANIMATE(0.236)
           ALIVE(0.236)
           MALE(0.236)
           BANKER(0.236)
           DESERVES_DEATH(0.236)
           1%(0.236)
           LARRY(0.236)
     PROFESSION(0.835)
     CARS(0.835)
     MACHINES(0.835)
     SKILL(0.835)
     TALENT(0.835)
     BLUE_COLLAR(0.835)

'OJ':
   ORANGE(1.000)
   JUICE(1.000)
   LIQUID(1.000)
   BREAKFAST(1.000)
   MORNING(1.000)

Note: Andrei&Zack/Schemas/Ex1.sym
Note: Why do we drink OJ for breakfast?
Note: One of the earliest schemas to be learned, e.g., when one is 3.2778 years old
Note: One guy has inherent reason and one idiosyncratic reason
Note: Other guy has same inherent reason and a diff idiosyncratic reason

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/schemas/ex1b
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
Run 9 of az/schemas/ex1b
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 1    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 2    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (SECONDGUY, OJ)
Seq. 3    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 4    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 5    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 6    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (FIRSTGUY, OJ)
Seq. 7    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 8    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 9    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (FIRSTGUY, OJ)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From FirstGuy to SecondGuy:
  Groups:
    From CAUSE1 to:    CAUSE1 = 0.979
    From EFFECT1 to:    EFFECT1 = 0.982
    From CE-1 to:    CE-1 = 0.982
  Props:
    From P1 to:    'P3' = 0.879
    From P2 to:    P2 = 0.982
    From 'P3' to:    P1 = 0.879
  SPs:
    From SP2.1 to:    SP2.1 = 0.992
  Preds:
    From DELICIOUS1 to:    DELICIOUS1 = 0.970
  Objs:
    From OJ to:    OJ = 0.970

From FirstGuy to SchemaEx1b:
  Groups:
    From CAUSE1 to:    'CAUSE1' = 0.959
    From EFFECT1 to:    'EFFECT2' = 0.969
    From CE-1 to:    'CE-0' = 0.982
  Props:
    From P1 to:    'P2' = 0.879
    From P2 to:    'P0' = 0.982
  SPs:
    From SP2.1 to:    'SP0' = 0.992
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.970
  Objs:
    From OJ to:    'OJ' = 0.970
    From FIRSTGUY to:    'FIRSTGUY' = 0.879

From SecondGuy to FirstGuy:
  Groups:
    From CAUSE1 to:    CAUSE1 = 0.979
    From EFFECT1 to:    EFFECT1 = 0.982
    From CE-1 to:    CE-1 = 0.982
  Props:
    From P1 to:    'P3' = 0.879
    From P2 to:    P2 = 0.982
    From P3 to:
    From 'P3' to:    P1 = 0.879
  SPs:
    From SP2.1 to:    SP2.1 = 0.992
  Preds:
    From DELICIOUS1 to:    DELICIOUS1 = 0.970
  Objs:
    From OJ to:    OJ = 0.970

From SecondGuy to SchemaEx1b:
  Groups:
    From CAUSE1 to:    'CAUSE1' = 0.959
    From EFFECT1 to:    'EFFECT2' = 0.969
    From CE-1 to:    'CE-0' = 0.982
  Props:
    From P1 to:    'P1' = 0.990
    From P2 to:    'P0' = 0.982
  SPs:
    From SP1.1 to:    'SP1' = 0.993
    From SP1.2 to:    'SP2' = 0.990
    From SP2.1 to:    'SP0' = 0.992
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.970
    From DRINK1 to:    'DRINK1' = 0.970
    From DRINK2 to:    'DRINK2' = 0.969
  Objs:
    From OJ to:    'OJ' = 0.970
    From SECONDGUY to:    'SECONDGUY' = 0.970

From SchemaEx1b to FirstGuy:
  Groups:
    From 'CE-0' to:    CE-1 = 0.982
    From 'CAUSE1' to:    CAUSE1 = 0.959
    From 'EFFECT2' to:    EFFECT1 = 0.969
  Props:
    From 'P0' to:    P2 = 0.982
    From 'P2' to:    P1 = 0.879
  SPs:
    From 'SP0' to:    SP2.1 = 0.992
  Preds:
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.970
  Objs:
    From 'OJ' to:    OJ = 0.970
    From 'FIRSTGUY' to:    FIRSTGUY = 0.879

From SchemaEx1b to SecondGuy:
  Groups:
    From 'CE-0' to:    CE-1 = 0.982
    From 'CAUSE1' to:    CAUSE1 = 0.959
    From 'EFFECT2' to:    EFFECT1 = 0.969
  Props:
    From 'P0' to:    P2 = 0.982
    From 'P1' to:    P1 = 0.990
  SPs:
    From 'SP0' to:    SP2.1 = 0.992
    From 'SP1' to:    SP1.1 = 0.993
    From 'SP2' to:    SP1.2 = 0.990
  Preds:
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.970
    From 'DRINK1' to:    DRINK1 = 0.970
    From 'DRINK2' to:    DRINK2 = 0.969
  Objs:
    From 'OJ' to:    OJ = 0.970
    From 'SECONDGUY' to:    SECONDGUY = 0.970



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog FirstGuy * * * * *

Groups:

Props:
'P3':  

Preds:

Objs:

* * * * * Analog SecondGuy * * * * *

Groups:

Props:
'P3':  

Preds:

Objs:

* * * * * Analog SchemaEx1b * * * * *

Groups:
'CE-0' (index = 0 level =1):  
     Semantics: CAUSE-EFFECT (0.781) CS_1.0 (0.781) 

     Groups: 
     'CAUSE1' (index = 1 level =0):  
          Semantics: CAUSE (0.778) 
          Props: 'P0') 'DELICIOUS' ('OJ') 

     'EFFECT2' (index = 2 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P1') 'DRINK' ('SECONDGUY', 'OJ') 'P2') ) 


'CAUSE1' (index = 1 level =0):  
     Semantics: CAUSE (0.778) 
     Props: 'P0') 'DELICIOUS' ('OJ') 

'EFFECT2' (index = 2 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P1') 'DRINK' ('SECONDGUY', 'OJ') 'P2') ) 


Props:
'P0':  [ 'DELICIOUS1' + 'OJ' ] 
'P1':  [ 'DRINK1' + 'SECONDGUY' ] [ 'DRINK2' + 'OJ' ] 
'P2':  

Preds:
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
         ORANGE(0.365)
         JUICE(0.365)
         LIQUID(0.365)
         BREAKFAST(0.365)
         MORNING(0.365)

'DRINK1':
        INGEST1(0.500)
        CONSUME1(0.500)
   LIQUID1(1.000)
        SWALLOW1(0.500)

'DRINK2':
        INGEST2(0.500)
        CONSUME2(0.500)
   LIQUID2(1.000)
        SWALLOW2(0.500)


Objs:
'OJ':
         TASTE1(0.397)
         GOOD1(0.397)
         YUM1(0.397)
         DELICIOUS1(0.397)
         TASTY1(0.397)
         REFRESHING1(0.397)
         TANGY1(0.397)
         CITRUS1(0.397)
         TART1(0.397)
   ORANGE(1.000)
   JUICE(1.000)
   LIQUID(1.000)
   BREAKFAST(1.000)
   MORNING(1.000)

'SECONDGUY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   MALE(1.000)
         BANKER(0.357)
         DESERVES_DEATH(0.357)
         1%(0.357)
         LARRY(0.357)
      MECHANIC(0.681)
      FATHER(0.681)
      DUDE(0.681)

'FIRSTGUY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   MALE(1.000)
       BANKER(0.638)
       DESERVES_DEATH(0.638)
       1%(0.638)
       LARRY(0.638)
         MECHANIC(0.369)
         FATHER(0.369)
         DUDE(0.369)

Note: Andrei&Zack/Schemas/Ex1.sym
Note: Why do we drink OJ for breakfast?
Note: One of the earliest schemas to be learned, e.g., when one is 3.2778 years old
Note: One guy has inherent reason and one idiosyncratic reason
Note: Other guy has same inherent reason and a diff idiosyncratic reason

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of az/schemas/ex1b
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
Run 10 of az/schemas/ex1b
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 1    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 2    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:ISA (SECONDGUY, MECHANIC)
Seq. 3    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:ISA (SECONDGUY, MECHANIC)
Seq. 4    Driver:SecondGuy    Recip : FirstGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (SECONDGUY, OJ)
Seq. 5    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 6    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:HASA (FIRSTGUY, FETISH)
Seq. 7    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P3:HASA (FIRSTGUY, FETISH)
Seq. 8    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P2:DELICIOUS (OJ)
Seq. 9    Driver:FirstGuy    Recip : SecondGuy SchemaEx1b    Fire control:groups (CE-1)     Goals: NORMAL     Phase set: P1:DRINK (FIRSTGUY, OJ)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From FirstGuy to SecondGuy:
  Groups:
    From CAUSE1 to:    CAUSE1 = 0.979
    From EFFECT1 to:    EFFECT1 = 0.982
    From CE-1 to:    CE-1 = 0.982
  Props:
    From P1 to:    'P4' = 0.879
    From P2 to:    P2 = 0.982
    From P3 to:    'P3' = 0.879
    From 'P3' to:    P3 = 0.879
    From 'P4' to:    P1 = 0.879
  SPs:
    From SP2.1 to:    SP2.1 = 0.992
  Preds:
    From DELICIOUS1 to:    DELICIOUS1 = 0.968
  Objs:
    From OJ to:    OJ = 0.968

From FirstGuy to SchemaEx1b:
  Groups:
  Props:
    From P1 to:    'P3' = 0.990
    From P2 to:    'P0' = 0.982
    From P3 to:    'P1' = 0.990
  SPs:
    From SP1.1 to:    'SP5' = 0.990
    From SP1.2 to:    'SP6' = 0.990
    From SP2.1 to:    'SP0' = 0.992
    From SP3.1 to:    'SP1' = 0.993
    From SP3.2 to:    'SP2' = 0.993
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.968
    From DRINK1 to:    'DRINK1' = 0.969
    From DRINK2 to:    'DRINK2' = 0.969
    From HASA1 to:    'ISA1' = 0.970
    From HASA2 to:    'ISA2' = 0.970
  Objs:
    From OJ to:    'OJ' = 0.968
    From FIRSTGUY to:    'SECONDGUY' = 0.970
    From FETISH to:    'MECHANIC' = 0.970

From SecondGuy to FirstGuy:
  Groups:
    From CAUSE1 to:    CAUSE1 = 0.979
    From EFFECT1 to:    EFFECT1 = 0.982
    From CE-1 to:    CE-1 = 0.982
  Props:
    From P1 to:    'P4' = 0.879
    From P2 to:    P2 = 0.982
    From P3 to:    'P3' = 0.879
    From 'P3' to:    P3 = 0.879
    From 'P4' to:    P1 = 0.879
  SPs:
    From SP2.1 to:    SP2.1 = 0.992
  Preds:
    From DELICIOUS1 to:    DELICIOUS1 = 0.968
  Objs:
    From OJ to:    OJ = 0.968

From SecondGuy to SchemaEx1b:
  Groups:
    From CAUSE1 to:    'CAUSE1' = 0.959
    From EFFECT1 to:    'EFFECT2' = 0.969
    From CE-1 to:    'CE-0' = 0.982
  Props:
    From P1 to:    'P2' = 0.990
    From P2 to:    'P0' = 0.982
    From P3 to:    'P1' = 0.990
  SPs:
    From SP1.1 to:    'SP3' = 0.990
    From SP1.2 to:    'SP4' = 0.990
    From SP2.1 to:    'SP0' = 0.992
    From SP3.1 to:    'SP1' = 0.993
    From SP3.2 to:    'SP2' = 0.993
  Preds:
    From DELICIOUS1 to:    'DELICIOUS1' = 0.968
    From DRINK1 to:    'DRINK1' = 0.969
    From DRINK2 to:    'DRINK2' = 0.969
    From ISA1 to:    'ISA1' = 0.970
    From ISA2 to:    'ISA2' = 0.970
  Objs:
    From OJ to:    'OJ' = 0.968
    From SECONDGUY to:    'SECONDGUY' = 0.970
    From MECHANIC to:    'MECHANIC' = 0.970

From SchemaEx1b to FirstGuy:
  Groups:
  Props:
    From 'P0' to:    P2 = 0.982
    From 'P1' to:    P3 = 0.990
    From 'P3' to:    P1 = 0.990
  SPs:
    From 'SP0' to:    SP2.1 = 0.992
    From 'SP1' to:    SP3.1 = 0.993
    From 'SP2' to:    SP3.2 = 0.993
    From 'SP5' to:    SP1.1 = 0.990
    From 'SP6' to:    SP1.2 = 0.990
  Preds:
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.968
    From 'ISA1' to:    HASA1 = 0.970
    From 'ISA2' to:    HASA2 = 0.970
    From 'DRINK1' to:    DRINK1 = 0.969
    From 'DRINK2' to:    DRINK2 = 0.969
  Objs:
    From 'OJ' to:    OJ = 0.968
    From 'SECONDGUY' to:    FIRSTGUY = 0.970
    From 'MECHANIC' to:    FETISH = 0.970

From SchemaEx1b to SecondGuy:
  Groups:
    From 'CE-0' to:    CE-1 = 0.982
    From 'CAUSE1' to:    CAUSE1 = 0.959
    From 'EFFECT2' to:    EFFECT1 = 0.969
  Props:
    From 'P0' to:    P2 = 0.982
    From 'P1' to:    P3 = 0.990
    From 'P2' to:    P1 = 0.990
  SPs:
    From 'SP0' to:    SP2.1 = 0.992
    From 'SP1' to:    SP3.1 = 0.993
    From 'SP2' to:    SP3.2 = 0.993
    From 'SP3' to:    SP1.1 = 0.990
    From 'SP4' to:    SP1.2 = 0.990
  Preds:
    From 'DELICIOUS1' to:    DELICIOUS1 = 0.968
    From 'ISA1' to:    ISA1 = 0.970
    From 'ISA2' to:    ISA2 = 0.970
    From 'DRINK1' to:    DRINK1 = 0.969
    From 'DRINK2' to:    DRINK2 = 0.969
  Objs:
    From 'OJ' to:    OJ = 0.968
    From 'SECONDGUY' to:    SECONDGUY = 0.970
    From 'MECHANIC' to:    MECHANIC = 0.970



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog FirstGuy * * * * *

Groups:

Props:
'P3':  
'P4':  

Preds:

Objs:

* * * * * Analog SecondGuy * * * * *

Groups:

Props:
'P3':  
'P4':  

Preds:

Objs:

* * * * * Analog SchemaEx1b * * * * *

Groups:
'CE-0' (index = 0 level =1):  
     Semantics: CAUSE-EFFECT (0.781) CS_1.0 (0.781) 

     Groups: 
     'CAUSE1' (index = 1 level =0):  
          Semantics: CAUSE (0.725) 
          Props: 'P0') 'DELICIOUS' ('OJ') 'P1') 'ISA' ('SECONDGUY', 'MECHANIC') 

     'EFFECT2' (index = 2 level =0):  
          Semantics: EFFECT (0.725) 
          Props: 'P2') 'DRINK' ('SECONDGUY', 'OJ') 


'CAUSE1' (index = 1 level =0):  
     Semantics: CAUSE (0.725) 
     Props: 'P0') 'DELICIOUS' ('OJ') 'P1') 'ISA' ('SECONDGUY', 'MECHANIC') 

'EFFECT2' (index = 2 level =0):  
     Semantics: EFFECT (0.725) 
     Props: 'P2') 'DRINK' ('SECONDGUY', 'OJ') 


Props:
'P0':  [ 'DELICIOUS1' + 'OJ' ] 
'P1':  [ 'ISA1' + 'SECONDGUY' ] [ 'ISA2' + 'MECHANIC' ] 
'P2':  [ 'DRINK1' + 'SECONDGUY' ] [ 'DRINK2' + 'OJ' ] 
'P3':  [ 'DRINK1' + 'SECONDGUY' ] [ 'DRINK2' + 'OJ' ] 

Preds:
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
         ORANGE(0.365)
         JUICE(0.365)
         LIQUID(0.365)
         BREAKFAST(0.365)
         MORNING(0.365)

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

'DRINK1':
        INGEST1(0.500)
        CONSUME1(0.500)
   LIQUID1(1.000)
        SWALLOW1(0.500)

'DRINK2':
        INGEST2(0.500)
        CONSUME2(0.500)
   LIQUID2(1.000)
        SWALLOW2(0.500)

'DRINK1':
        INGEST1(0.500)
        CONSUME1(0.500)
   LIQUID1(1.000)
        SWALLOW1(0.500)

'DRINK2':
        INGEST2(0.500)
        CONSUME2(0.500)
   LIQUID2(1.000)
        SWALLOW2(0.500)


Objs:
'OJ':
         TASTE1(0.397)
         GOOD1(0.397)
         YUM1(0.397)
         DELICIOUS1(0.397)
         TASTY1(0.397)
         REFRESHING1(0.397)
         TANGY1(0.397)
         CITRUS1(0.397)
         TART1(0.397)
   ORANGE(1.000)
   JUICE(1.000)
   LIQUID(1.000)
   BREAKFAST(1.000)
   MORNING(1.000)

'SECONDGUY':
   HUMAN(1.000)
   PERSON(1.000)
   ANIMATE(1.000)
   ALIVE(1.000)
   MALE(1.000)
         BANKER(0.357)
         DESERVES_DEATH(0.357)
         1%(0.357)
         LARRY(0.357)
      MECHANIC(0.681)
      FATHER(0.681)
      DUDE(0.681)

'MECHANIC':
           HUMAN(0.236)
   PERSON(1.000)
           ANIMATE(0.236)
           ALIVE(0.236)
           MALE(0.236)
           BANKER(0.236)
           DESERVES_DEATH(0.236)
           1%(0.236)
           LARRY(0.236)
     PROFESSION(0.835)
     CARS(0.835)
     MACHINES(0.835)
     SKILL(0.835)
     TALENT(0.835)
     BLUE_COLLAR(0.835)

