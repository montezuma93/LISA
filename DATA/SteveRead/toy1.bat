Note: First attempt to illustrate how LISA might simulate trait inferences

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of steveread/toy1
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
Run 1 of steveread/toy1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:JoeLawyer    Recip : PeopleSchema    Fire control:props    Phase set: P1
Seq. 1    Driver:PeopleSchema    Recip : JoeLawyer    Fire control:groups    Phase set: P1
Seq. 2    Driver:PeopleSchema    Recip : JoeLawyer    Fire control:groups    Phase set: P2


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From PeopleSchema to JoeLawyer:
  Groups:
    From G1 to:    "G1" = 0.967
  Props:
    From P1 to:    P1 = 1.000
    From P2 to:    "P2" = 1.000
  SPs:
    From SP1.1 to:    SP1.1 = 1.000
    From SP2.1 to:    "SP2.1" = 1.000
  Preds:
    From LAWYER1 to:    LAWYER1 = 0.967
    From DISHONEST1 to:    "DISHONEST1" = 0.967
  Objs:
    From PERSON1 to:    JOE = 0.967

From JoeLawyer to PeopleSchema:
  Groups:
    From "G1" to:    G1 = 0.967
  Props:
    From P1 to:    P1 = 1.000
    From "P2" to:    P2 = 1.000
  SPs:
    From SP1.1 to:    SP1.1 = 1.000
    From "SP2.1" to:    SP2.1 = 1.000
  Preds:
    From LAWYER1 to:    LAWYER1 = 0.967
    From "DISHONEST1" to:    DISHONEST1 = 0.967
  Objs:
    From JOE to:    PERSON1 = 0.967



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog JoeLawyer * * * * *

Groups:
"G1":  "P2" LAWYER (0.859) 

Props:
"P2":  [ "DISHONEST1" + JOE ] 

Preds:
"DISHONEST1":
   PERSONALITY1(1.000)
   TRAIT1(1.000)
   LIE1(1.000)


Objs:

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 2 of steveread/toy1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:JoeLawyer    Recip : PeopleSchema    Fire control:props    Phase set: P1
Seq. 1    Driver:PeopleSchema    Recip : JoeLawyer    Fire control:groups    Phase set: P1
Seq. 2    Driver:PeopleSchema    Recip : JoeLawyer    Fire control:groups    Phase set: P2


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From PeopleSchema to JoeLawyer:
  Groups:
    From G1 to:    "G1" = 0.967
  Props:
    From P1 to:    P1 = 1.000
    From P2 to:    "P2" = 1.000
  SPs:
    From SP1.1 to:    SP1.1 = 1.000
    From SP2.1 to:    "SP2.1" = 1.000
  Preds:
    From LAWYER1 to:    LAWYER1 = 0.967
    From DISHONEST1 to:    "DISHONEST1" = 0.967
  Objs:
    From PERSON1 to:    JOE = 0.967

From JoeLawyer to PeopleSchema:
  Groups:
    From "G1" to:    G1 = 0.967
  Props:
    From P1 to:    P1 = 1.000
    From "P2" to:    P2 = 1.000
  SPs:
    From SP1.1 to:    SP1.1 = 1.000
    From "SP2.1" to:    SP2.1 = 1.000
  Preds:
    From LAWYER1 to:    LAWYER1 = 0.967
    From "DISHONEST1" to:    DISHONEST1 = 0.967
  Objs:
    From JOE to:    PERSON1 = 0.967



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog JoeLawyer * * * * *

Groups:
"G1":  P1 "P2" LAWYER (0.859) 

Props:
"P2":  [ "DISHONEST1" + JOE ] 

Preds:
"DISHONEST1":
   PERSONALITY1(1.000)
   TRAIT1(1.000)
   LIE1(1.000)


Objs:

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 3 of steveread/toy1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:JoeLawyer    Recip : PeopleSchema    Fire control:props    Phase set: P1
Seq. 1    Driver:PeopleSchema    Recip : JoeLawyer    Fire control:groups    Phase set: P1
Seq. 2    Driver:PeopleSchema    Recip : JoeLawyer    Fire control:groups    Phase set: P2


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From PeopleSchema to JoeLawyer:
  Groups:
    From G1 to:    "G1" = 0.967
  Props:
    From P1 to:    P1 = 1.000
    From P2 to:    "P2" = 1.000
  SPs:
    From SP1.1 to:    SP1.1 = 1.000
    From SP2.1 to:    "SP2.1" = 1.000
  Preds:
    From LAWYER1 to:    LAWYER1 = 0.967
    From DISHONEST1 to:    "DISHONEST1" = 0.967
  Objs:
    From PERSON1 to:    JOE = 0.967

From JoeLawyer to PeopleSchema:
  Groups:
    From "G1" to:    G1 = 0.967
  Props:
    From P1 to:    P1 = 1.000
    From "P2" to:    P2 = 1.000
  SPs:
    From SP1.1 to:    SP1.1 = 1.000
    From "SP2.1" to:    SP2.1 = 1.000
  Preds:
    From LAWYER1 to:    LAWYER1 = 0.967
    From "DISHONEST1" to:    DISHONEST1 = 0.967
  Objs:
    From JOE to:    PERSON1 = 0.967



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog JoeLawyer * * * * *

Groups:
"G1":  P1 "P2" LAWYER (0.859) 

Props:
"P2":  [ "DISHONEST1" + JOE ] 

Preds:
"DISHONEST1":
   PERSONALITY1(1.000)
   TRAIT1(1.000)
   LIE1(1.000)


Objs:

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 4 of steveread/toy1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:JoeLawyer    Recip : PeopleSchema    Fire control:props    Phase set: P1
Seq. 1    Driver:PeopleSchema    Recip : JoeLawyer    Fire control:groups    Phase set: P1
Seq. 2    Driver:PeopleSchema    Recip : JoeLawyer    Fire control:groups    Phase set: P2


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From PeopleSchema to JoeLawyer:
  Groups:
    From G1 to:    "G1" = 0.967
  Props:
    From P1 to:    P1 = 1.000
    From P2 to:    "P2" = 1.000
  SPs:
    From SP1.1 to:    SP1.1 = 1.000
    From SP2.1 to:    "SP2.1" = 1.000
  Preds:
    From LAWYER1 to:    LAWYER1 = 0.967
    From DISHONEST1 to:    "DISHONEST1" = 0.967
  Objs:
    From PERSON1 to:    JOE = 0.967

From JoeLawyer to PeopleSchema:
  Groups:
    From "G1" to:    G1 = 0.967
  Props:
    From P1 to:    P1 = 1.000
    From "P2" to:    P2 = 1.000
  SPs:
    From SP1.1 to:    SP1.1 = 1.000
    From "SP2.1" to:    SP2.1 = 1.000
  Preds:
    From LAWYER1 to:    LAWYER1 = 0.967
    From "DISHONEST1" to:    DISHONEST1 = 0.967
  Objs:
    From JOE to:    PERSON1 = 0.967



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog JoeLawyer * * * * *

Groups:
"G1":  P1 "P2" LAWYER (0.859) 

Props:
"P2":  [ "DISHONEST1" + JOE ] 

Preds:
"DISHONEST1":
   PERSONALITY1(1.000)
   TRAIT1(1.000)
   LIE1(1.000)


Objs:

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 5 of steveread/toy1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:JoeLawyer    Recip : PeopleSchema    Fire control:props    Phase set: P1
Seq. 1    Driver:PeopleSchema    Recip : JoeLawyer    Fire control:groups    Phase set: P1
Seq. 2    Driver:PeopleSchema    Recip : JoeLawyer    Fire control:groups    Phase set: P2


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From PeopleSchema to JoeLawyer:
  Groups:
    From G1 to:    "G1" = 0.967
  Props:
    From P1 to:    P1 = 1.000
    From P2 to:    "P2" = 1.000
  SPs:
    From SP1.1 to:    SP1.1 = 1.000
    From SP2.1 to:    "SP2.1" = 1.000
  Preds:
    From LAWYER1 to:    LAWYER1 = 0.967
    From DISHONEST1 to:    "DISHONEST1" = 0.967
  Objs:
    From PERSON1 to:    JOE = 0.967

From JoeLawyer to PeopleSchema:
  Groups:
    From "G1" to:    G1 = 0.967
  Props:
    From P1 to:    P1 = 1.000
    From "P2" to:    P2 = 1.000
  SPs:
    From SP1.1 to:    SP1.1 = 1.000
    From "SP2.1" to:    SP2.1 = 1.000
  Preds:
    From LAWYER1 to:    LAWYER1 = 0.967
    From "DISHONEST1" to:    DISHONEST1 = 0.967
  Objs:
    From JOE to:    PERSON1 = 0.967



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog JoeLawyer * * * * *

Groups:
"G1":  P1 "P2" LAWYER (0.859) 

Props:
"P2":  [ "DISHONEST1" + JOE ] 

Preds:
"DISHONEST1":
   PERSONALITY1(1.000)
   TRAIT1(1.000)
   LIE1(1.000)


Objs:

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 6 of steveread/toy1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:JoeLawyer    Recip : PeopleSchema    Fire control:props    Phase set: P1
Seq. 1    Driver:PeopleSchema    Recip : JoeLawyer    Fire control:groups    Phase set: P1
Seq. 2    Driver:PeopleSchema    Recip : JoeLawyer    Fire control:groups    Phase set: P2


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From PeopleSchema to JoeLawyer:
  Groups:
    From G1 to:    "G1" = 0.967
  Props:
    From P1 to:    P1 = 1.000
    From P2 to:    "P2" = 1.000
  SPs:
    From SP1.1 to:    SP1.1 = 1.000
    From SP2.1 to:    "SP2.1" = 1.000
  Preds:
    From LAWYER1 to:    LAWYER1 = 0.967
    From DISHONEST1 to:    "DISHONEST1" = 0.967
  Objs:
    From PERSON1 to:    JOE = 0.967

From JoeLawyer to PeopleSchema:
  Groups:
    From "G1" to:    G1 = 0.967
  Props:
    From P1 to:    P1 = 1.000
    From "P2" to:    P2 = 1.000
  SPs:
    From SP1.1 to:    SP1.1 = 1.000
    From "SP2.1" to:    SP2.1 = 1.000
  Preds:
    From LAWYER1 to:    LAWYER1 = 0.967
    From "DISHONEST1" to:    DISHONEST1 = 0.967
  Objs:
    From JOE to:    PERSON1 = 0.967



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog JoeLawyer * * * * *

Groups:
"G1":  P1 "P2" LAWYER (0.859) 

Props:
"P2":  [ "DISHONEST1" + JOE ] 

Preds:
"DISHONEST1":
   PERSONALITY1(1.000)
   TRAIT1(1.000)
   LIE1(1.000)


Objs:

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 7 of steveread/toy1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:JoeLawyer    Recip : PeopleSchema    Fire control:props    Phase set: P1
Seq. 1    Driver:PeopleSchema    Recip : JoeLawyer    Fire control:groups    Phase set: P2
Seq. 2    Driver:PeopleSchema    Recip : JoeLawyer    Fire control:groups    Phase set: P1


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From PeopleSchema to JoeLawyer:
  Groups:
    From G1 to:    "G1" = 0.967
  Props:
    From P1 to:    P1 = 1.000
    From P2 to:    "P2" = 1.000
  SPs:
    From SP1.1 to:    SP1.1 = 1.000
    From SP2.1 to:    "SP2.1" = 1.000
  Preds:
    From LAWYER1 to:    LAWYER1 = 0.967
    From DISHONEST1 to:    "DISHONEST1" = 0.967
  Objs:
    From PERSON1 to:    JOE = 0.967

From JoeLawyer to PeopleSchema:
  Groups:
    From "G1" to:    G1 = 0.967
  Props:
    From P1 to:    P1 = 1.000
    From "P2" to:    P2 = 1.000
  SPs:
    From SP1.1 to:    SP1.1 = 1.000
    From "SP2.1" to:    SP2.1 = 1.000
  Preds:
    From LAWYER1 to:    LAWYER1 = 0.967
    From "DISHONEST1" to:    DISHONEST1 = 0.967
  Objs:
    From JOE to:    PERSON1 = 0.967



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog JoeLawyer * * * * *

Groups:
"G1":  "P2" P1 LAWYER (0.859) 

Props:
"P2":  [ "DISHONEST1" + JOE ] 

Preds:
"DISHONEST1":
   PERSONALITY1(1.000)
   TRAIT1(1.000)
   LIE1(1.000)


Objs:

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 8 of steveread/toy1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:JoeLawyer    Recip : PeopleSchema    Fire control:props    Phase set: P1
Seq. 1    Driver:PeopleSchema    Recip : JoeLawyer    Fire control:groups    Phase set: P1
Seq. 2    Driver:PeopleSchema    Recip : JoeLawyer    Fire control:groups    Phase set: P2


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From PeopleSchema to JoeLawyer:
  Groups:
    From G1 to:    "G1" = 0.967
  Props:
    From P1 to:    P1 = 1.000
    From P2 to:    "P2" = 1.000
  SPs:
    From SP1.1 to:    SP1.1 = 1.000
    From SP2.1 to:    "SP2.1" = 1.000
  Preds:
    From LAWYER1 to:    LAWYER1 = 0.967
    From DISHONEST1 to:    "DISHONEST1" = 0.967
  Objs:
    From PERSON1 to:    JOE = 0.967

From JoeLawyer to PeopleSchema:
  Groups:
    From "G1" to:    G1 = 0.967
  Props:
    From P1 to:    P1 = 1.000
    From "P2" to:    P2 = 1.000
  SPs:
    From SP1.1 to:    SP1.1 = 1.000
    From "SP2.1" to:    SP2.1 = 1.000
  Preds:
    From LAWYER1 to:    LAWYER1 = 0.967
    From "DISHONEST1" to:    DISHONEST1 = 0.967
  Objs:
    From JOE to:    PERSON1 = 0.967



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog JoeLawyer * * * * *

Groups:
"G1":  P1 "P2" LAWYER (0.859) 

Props:
"P2":  [ "DISHONEST1" + JOE ] 

Preds:
"DISHONEST1":
   PERSONALITY1(1.000)
   TRAIT1(1.000)
   LIE1(1.000)


Objs:

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 9 of steveread/toy1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:JoeLawyer    Recip : PeopleSchema    Fire control:props    Phase set: P1
Seq. 1    Driver:PeopleSchema    Recip : JoeLawyer    Fire control:groups    Phase set: P1
Seq. 2    Driver:PeopleSchema    Recip : JoeLawyer    Fire control:groups    Phase set: P2


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From PeopleSchema to JoeLawyer:
  Groups:
    From G1 to:    "G1" = 0.967
  Props:
    From P1 to:    P1 = 1.000
    From P2 to:    "P2" = 1.000
  SPs:
    From SP1.1 to:    SP1.1 = 1.000
    From SP2.1 to:    "SP2.1" = 1.000
  Preds:
    From LAWYER1 to:    LAWYER1 = 0.967
    From DISHONEST1 to:    "DISHONEST1" = 0.967
  Objs:
    From PERSON1 to:    JOE = 0.967

From JoeLawyer to PeopleSchema:
  Groups:
    From "G1" to:    G1 = 0.967
  Props:
    From P1 to:    P1 = 1.000
    From "P2" to:    P2 = 1.000
  SPs:
    From SP1.1 to:    SP1.1 = 1.000
    From "SP2.1" to:    SP2.1 = 1.000
  Preds:
    From LAWYER1 to:    LAWYER1 = 0.967
    From "DISHONEST1" to:    DISHONEST1 = 0.967
  Objs:
    From JOE to:    PERSON1 = 0.967



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog JoeLawyer * * * * *

Groups:
"G1":  P1 "P2" LAWYER (0.859) 

Props:
"P2":  [ "DISHONEST1" + JOE ] 

Preds:
"DISHONEST1":
   PERSONALITY1(1.000)
   TRAIT1(1.000)
   LIE1(1.000)


Objs:

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 10 of steveread/toy1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:JoeLawyer    Recip : PeopleSchema    Fire control:props    Phase set: P1
Seq. 1    Driver:PeopleSchema    Recip : JoeLawyer    Fire control:groups    Phase set: P2
Seq. 2    Driver:PeopleSchema    Recip : JoeLawyer    Fire control:groups    Phase set: P1


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From PeopleSchema to JoeLawyer:
  Groups:
    From G1 to:    "G1" = 0.967
  Props:
    From P1 to:    P1 = 1.000
    From P2 to:    "P2" = 1.000
  SPs:
    From SP1.1 to:    SP1.1 = 1.000
    From SP2.1 to:    "SP2.1" = 1.000
  Preds:
    From LAWYER1 to:    LAWYER1 = 0.967
    From DISHONEST1 to:    "DISHONEST1" = 0.967
  Objs:
    From PERSON1 to:    JOE = 0.967

From JoeLawyer to PeopleSchema:
  Groups:
    From "G1" to:    G1 = 0.967
  Props:
    From P1 to:    P1 = 1.000
    From "P2" to:    P2 = 1.000
  SPs:
    From SP1.1 to:    SP1.1 = 1.000
    From "SP2.1" to:    SP2.1 = 1.000
  Preds:
    From LAWYER1 to:    LAWYER1 = 0.967
    From "DISHONEST1" to:    DISHONEST1 = 0.967
  Objs:
    From JOE to:    PERSON1 = 0.967



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog JoeLawyer * * * * *

Groups:
"G1":  "P2" P1 LAWYER (0.859) 

Props:
"P2":  [ "DISHONEST1" + JOE ] 

Preds:
"DISHONEST1":
   PERSONALITY1(1.000)
   TRAIT1(1.000)
   LIE1(1.000)


Objs:
