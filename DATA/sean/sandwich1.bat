Note: Auto-Generated Sym File
Note: "Jill wants a sandwich.  She knows Sam has one.  She asks him for a sandwich."
Note: "Bob wants a ride.  He knows Jen has a car.  He asks her for a ride."

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of sean/sandwich1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 


* * * * * * * * * * * * * * * * * * * * *
Parameters values:
    Neurally-plausible WM
    Semantic Noise = 0.0000
    Semantic Death = 0.0000
    Attention = 1.0000
    Within-group support = 1.0000
    Driver Inhibition = 1.0000
    Recip Inhibition = 0.5000
    Hebb Learning Rate = 1.0000
    Bail Upon Settling = False
    Using Vers142 Mapping Algorithm
* * * * * * * * * * * * * * * * * * * * *


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 1 of sean/sandwich1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P1:WANT (BOB, RIDE)
Seq. 1    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P2:HAVE (JEN, CAR)
Seq. 2    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P3:KNOW (BOB, P2)
Seq. 3    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P1:WANT (JILL, SANDWICH)
Seq. 4    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P2:HAVE (SAM, SANDWICH)
Seq. 5    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P3:KNOW (JILL, P2)
Seq. 6    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P4:ASK (JILL, SAM, SANDWICH)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From Sandwich to Ride:
  Groups:
  Props:
    From P1 (IC = 0.621) to:    P1 = 0.990
    From P2 (IC = 0.621) to:    P2 = 0.982
    From P3 (IC = 0.621) to:    P3 = 0.990
    From P4 (IC = 0.500) to:    'P3' = 0.993
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    SP2.1 = 0.993
    From SP2.2 to:    SP2.2 = 0.993
    From SP3.1 to:    SP3.1 = 0.993
    From SP3.2 to:    SP3.2 = 0.992
    From SP4.1 to:    'SP6' = 0.992
    From SP4.2 to:    'SP7' = 0.992
    From SP4.3 to:    'SP8' = 0.992
  Preds:
    From WANT1 to:    WANT1 = 0.968
    From WANT2 to:    WANT2 = 0.968
    From KNOW1 to:    KNOW1 = 0.968
    From KNOW2 to:    KNOW2 = 0.968
    From HAVE1 to:    HAVE1 = 0.968
    From HAVE2 to:    HAVE2 = 0.968
    From ASK1 to:    'ASK1' = 0.968
    From ASK2 to:    'ASK2' = 0.968
    From ASK3 to:    'ASK3' = 0.968
  Objs:
    From JILL to:    BOB = 0.970
    From SAM to:    JEN = 0.968
    From SANDWICH to:    RIDE = 0.968    CAR = 0.968

From Ride to Sandwich:
  Groups:
  Props:
    From P1 (IC = 0.621) to:    P1 = 0.990
    From P2 (IC = 0.621) to:    P2 = 0.982
    From P3 (IC = 0.621) to:    P3 = 0.990
    From 'P3' (IC = 0.247) to:    P4 = 0.993
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    SP2.1 = 0.993
    From SP2.2 to:    SP2.2 = 0.993
    From SP3.1 to:    SP3.1 = 0.993
    From SP3.2 to:    SP3.2 = 0.992
    From 'SP6' to:    SP4.1 = 0.992
    From 'SP7' to:    SP4.2 = 0.992
    From 'SP8' to:    SP4.3 = 0.992
  Preds:
    From WANT1 to:    WANT1 = 0.968
    From WANT2 to:    WANT2 = 0.968
    From KNOW1 to:    KNOW1 = 0.968
    From KNOW2 to:    KNOW2 = 0.968
    From HAVE1 to:    HAVE1 = 0.968
    From HAVE2 to:    HAVE2 = 0.968
    From 'ASK1' to:    ASK1 = 0.968
    From 'ASK2' to:    ASK2 = 0.968
    From 'ASK3' to:    ASK3 = 0.968
  Objs:
    From BOB to:    JILL = 0.970
    From JEN to:    SAM = 0.968
    From RIDE to:    SANDWICH = 0.968
    From CAR to:    SANDWICH = 0.968



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Ride * * * * *

Groups:

Props:
'P3':  [ 'ASK1' + BOB ] [ 'ASK2' + JEN ] [ 'ASK3' + RIDE ] 

Preds:
'ASK1':
   ORGANISM(1.000)
   PERSON(1.000)
   SOUL(1.000)
   LIVING_THING(1.000)
   BEING(1.000)
   MORTAL(1.000)
   INDIVIDUAL(1.000)
   SOMEONE(1.000)
   SOMEBODY(1.000)
   ANIMATE_THING(1.000)
   QUESTIONER(1.000)
   ARTICULATOR(1.000)
   QUERIER(1.000)
   COMMUNICATOR(1.000)
   UTTERER(1.000)
   TALKER(1.000)
   INQUIRER(1.000)
   SPEAKER(1.000)
   VERBALISER(1.000)
   ASKER(1.000)
   VERBALIZER(1.000)
   ENQUIRER(1.000)

'ASK2':
          NEED(0.333)
          REQUIRE(0.333)
   CONVEY10(1.000)
   PASS1(1.000)
   PUT_ACROSS(1.000)
   PASS_ON(1.000)
   COMMUNICATE1(1.000)
   TRANSFER1(1.000)
   DISPLACE2(1.000)
   TRANSMIT10(1.000)
   MOVE1(1.000)
   REQUEST1(1.000)
   COMMUNICATE10(1.000)
   BESPEAK(1.000)
   QUEST1(1.000)
   DEMAND(1.000)
   CALL_FOR4(1.000)
   PASS_ALONG(1.000)
          STATIVE(0.333)
   ACT(1.000)
          COMMUNICATION(0.333)
          TAKE(0.333)
   INTERACT(1.000)
   MOVE(1.000)
          LEAVE2(0.333)
   INTERCOMMUNICATE(1.000)
          ASK9(0.333)
          GIVE9(0.333)
          CALL_FOR(0.333)
          NECESSITATE(0.333)
          IMPART(0.333)
          INVOLVE7(0.333)
          INQUIRE1(0.333)
          TELL(0.333)
          FORMULATE(0.333)
          SHOW2(0.333)
          CONVEY(0.333)
          PHRASE(0.333)
          GIVE_VOICE(0.333)
          EXPECT(0.333)
          ASK(0.333)
          REQUIRE1(0.333)
          POSTULATE(0.333)
          ADDRESS(0.333)
   COMMUNICATE(1.000)
          INFORM(0.333)
          ARTICULATE2(0.333)
          ENQUIRE(0.333)
          EXPRESS1(0.333)
          EVINCE(0.333)
          PASS_ON3(0.333)
          WORD(0.333)
          ASK1(0.333)
          ASK2(0.333)
          ASK4(0.333)
          TURN_TO1(0.333)
          ASK5(0.333)

'ASK3':
   ASK_ROLE_3(1.000)
   OBJECT(1.000)


Objs:
Note: Auto-Generated Sym File
Note: "Jill wants a sandwich.  She knows Sam has one.  She asks him for a sandwich."
Note: "Bob wants a ride.  He knows Jen has a car.  He asks her for a ride."

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of sean/sandwich1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 


* * * * * * * * * * * * * * * * * * * * *
Parameters values:
    Neurally-plausible WM
    Semantic Noise = 0.0000
    Semantic Death = 0.0000
    Attention = 1.0000
    Within-group support = 1.0000
    Driver Inhibition = 1.0000
    Recip Inhibition = 0.5000
    Hebb Learning Rate = 1.0000
    Bail Upon Settling = False
    Using Vers142 Mapping Algorithm
* * * * * * * * * * * * * * * * * * * * *


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 2 of sean/sandwich1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P1:WANT (BOB, RIDE)
Seq. 1    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P2:HAVE (JEN, CAR)
Seq. 2    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P3:KNOW (BOB, P2)
Seq. 3    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P1:WANT (JILL, SANDWICH)
Seq. 4    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P2:HAVE (SAM, SANDWICH)
Seq. 5    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P3:KNOW (JILL, P2)
Seq. 6    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P4:ASK (JILL, SAM, SANDWICH)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From Sandwich to Ride:
  Groups:
  Props:
    From P1 (IC = 0.621) to:    P1 = 0.990
    From P2 (IC = 0.621) to:    P2 = 0.982
    From P3 (IC = 0.621) to:    P3 = 0.990
    From P4 (IC = 0.500) to:    'P3' = 0.993
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    SP2.1 = 0.993
    From SP2.2 to:    SP2.2 = 0.993
    From SP3.1 to:    SP3.1 = 0.993
    From SP3.2 to:    SP3.2 = 0.992
    From SP4.1 to:    'SP6' = 0.992
    From SP4.2 to:    'SP7' = 0.992
    From SP4.3 to:    'SP8' = 0.992
  Preds:
    From WANT1 to:    WANT1 = 0.968
    From WANT2 to:    WANT2 = 0.968
    From KNOW1 to:    KNOW1 = 0.968
    From KNOW2 to:    KNOW2 = 0.968
    From HAVE1 to:    HAVE1 = 0.968
    From HAVE2 to:    HAVE2 = 0.968
    From ASK1 to:    'ASK1' = 0.968
    From ASK2 to:    'ASK2' = 0.968
    From ASK3 to:    'ASK3' = 0.968
  Objs:
    From JILL to:    BOB = 0.970
    From SAM to:    JEN = 0.968
    From SANDWICH to:    RIDE = 0.968    CAR = 0.968

From Ride to Sandwich:
  Groups:
  Props:
    From P1 (IC = 0.621) to:    P1 = 0.990
    From P2 (IC = 0.621) to:    P2 = 0.982
    From P3 (IC = 0.621) to:    P3 = 0.990
    From 'P3' (IC = 0.247) to:    P4 = 0.993
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    SP2.1 = 0.993
    From SP2.2 to:    SP2.2 = 0.993
    From SP3.1 to:    SP3.1 = 0.993
    From SP3.2 to:    SP3.2 = 0.992
    From 'SP6' to:    SP4.1 = 0.992
    From 'SP7' to:    SP4.2 = 0.992
    From 'SP8' to:    SP4.3 = 0.992
  Preds:
    From WANT1 to:    WANT1 = 0.968
    From WANT2 to:    WANT2 = 0.968
    From KNOW1 to:    KNOW1 = 0.968
    From KNOW2 to:    KNOW2 = 0.968
    From HAVE1 to:    HAVE1 = 0.968
    From HAVE2 to:    HAVE2 = 0.968
    From 'ASK1' to:    ASK1 = 0.968
    From 'ASK2' to:    ASK2 = 0.968
    From 'ASK3' to:    ASK3 = 0.968
  Objs:
    From BOB to:    JILL = 0.970
    From JEN to:    SAM = 0.968
    From RIDE to:    SANDWICH = 0.968
    From CAR to:    SANDWICH = 0.968



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Ride * * * * *

Groups:

Props:
'P3':  [ 'ASK1' + BOB ] [ 'ASK2' + JEN ] [ 'ASK3' + RIDE ] 

Preds:
'ASK1':
   ORGANISM(1.000)
   PERSON(1.000)
   SOUL(1.000)
   LIVING_THING(1.000)
   BEING(1.000)
   MORTAL(1.000)
   INDIVIDUAL(1.000)
   SOMEONE(1.000)
   SOMEBODY(1.000)
   ANIMATE_THING(1.000)
   QUESTIONER(1.000)
   ARTICULATOR(1.000)
   QUERIER(1.000)
   COMMUNICATOR(1.000)
   UTTERER(1.000)
   TALKER(1.000)
   INQUIRER(1.000)
   SPEAKER(1.000)
   VERBALISER(1.000)
   ASKER(1.000)
   VERBALIZER(1.000)
   ENQUIRER(1.000)

'ASK2':
          NEED(0.333)
          REQUIRE(0.333)
   CONVEY10(1.000)
   PASS1(1.000)
   PUT_ACROSS(1.000)
   PASS_ON(1.000)
   COMMUNICATE1(1.000)
   TRANSFER1(1.000)
   DISPLACE2(1.000)
   TRANSMIT10(1.000)
   MOVE1(1.000)
   REQUEST1(1.000)
   COMMUNICATE10(1.000)
   BESPEAK(1.000)
   QUEST1(1.000)
   DEMAND(1.000)
   CALL_FOR4(1.000)
   PASS_ALONG(1.000)
          STATIVE(0.333)
   ACT(1.000)
          COMMUNICATION(0.333)
          TAKE(0.333)
   INTERACT(1.000)
   MOVE(1.000)
          LEAVE2(0.333)
   INTERCOMMUNICATE(1.000)
          ASK9(0.333)
          GIVE9(0.333)
          CALL_FOR(0.333)
          NECESSITATE(0.333)
          IMPART(0.333)
          INVOLVE7(0.333)
          INQUIRE1(0.333)
          TELL(0.333)
          FORMULATE(0.333)
          SHOW2(0.333)
          CONVEY(0.333)
          PHRASE(0.333)
          GIVE_VOICE(0.333)
          EXPECT(0.333)
          ASK(0.333)
          REQUIRE1(0.333)
          POSTULATE(0.333)
          ADDRESS(0.333)
   COMMUNICATE(1.000)
          INFORM(0.333)
          ARTICULATE2(0.333)
          ENQUIRE(0.333)
          EXPRESS1(0.333)
          EVINCE(0.333)
          PASS_ON3(0.333)
          WORD(0.333)
          ASK1(0.333)
          ASK2(0.333)
          ASK4(0.333)
          TURN_TO1(0.333)
          ASK5(0.333)

'ASK3':
   ASK_ROLE_3(1.000)
   OBJECT(1.000)


Objs:
Note: Auto-Generated Sym File
Note: "Jill wants a sandwich.  She knows Sam has one.  She asks him for a sandwich."
Note: "Bob wants a ride.  He knows Jen has a car.  He asks her for a ride."

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of sean/sandwich1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 


* * * * * * * * * * * * * * * * * * * * *
Parameters values:
    Neurally-plausible WM
    Semantic Noise = 0.0000
    Semantic Death = 0.0000
    Attention = 1.0000
    Within-group support = 1.0000
    Driver Inhibition = 1.0000
    Recip Inhibition = 0.5000
    Hebb Learning Rate = 1.0000
    Bail Upon Settling = False
    Using Vers142 Mapping Algorithm
* * * * * * * * * * * * * * * * * * * * *


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 3 of sean/sandwich1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P1:WANT (BOB, RIDE)
Seq. 1    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P2:HAVE (JEN, CAR)
Seq. 2    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P3:KNOW (BOB, P2)
Seq. 3    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P1:WANT (JILL, SANDWICH)
Seq. 4    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P2:HAVE (SAM, SANDWICH)
Seq. 5    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P3:KNOW (JILL, P2)
Seq. 6    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P4:ASK (JILL, SAM, SANDWICH)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From Sandwich to Ride:
  Groups:
  Props:
    From P1 (IC = 0.621) to:    P1 = 0.990
    From P2 (IC = 0.621) to:    P2 = 0.982
    From P3 (IC = 0.621) to:    P3 = 0.990
    From P4 (IC = 0.500) to:    'P3' = 0.993
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    SP2.1 = 0.993
    From SP2.2 to:    SP2.2 = 0.993
    From SP3.1 to:    SP3.1 = 0.993
    From SP3.2 to:    SP3.2 = 0.992
    From SP4.1 to:    'SP6' = 0.992
    From SP4.2 to:    'SP7' = 0.992
    From SP4.3 to:    'SP8' = 0.992
  Preds:
    From WANT1 to:    WANT1 = 0.968
    From WANT2 to:    WANT2 = 0.968
    From KNOW1 to:    KNOW1 = 0.968
    From KNOW2 to:    KNOW2 = 0.968
    From HAVE1 to:    HAVE1 = 0.968
    From HAVE2 to:    HAVE2 = 0.968
    From ASK1 to:    'ASK1' = 0.968
    From ASK2 to:    'ASK2' = 0.968
    From ASK3 to:    'ASK3' = 0.968
  Objs:
    From JILL to:    BOB = 0.970
    From SAM to:    JEN = 0.968
    From SANDWICH to:    RIDE = 0.968    CAR = 0.968

From Ride to Sandwich:
  Groups:
  Props:
    From P1 (IC = 0.621) to:    P1 = 0.990
    From P2 (IC = 0.621) to:    P2 = 0.982
    From P3 (IC = 0.621) to:    P3 = 0.990
    From 'P3' (IC = 0.247) to:    P4 = 0.993
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    SP2.1 = 0.993
    From SP2.2 to:    SP2.2 = 0.993
    From SP3.1 to:    SP3.1 = 0.993
    From SP3.2 to:    SP3.2 = 0.992
    From 'SP6' to:    SP4.1 = 0.992
    From 'SP7' to:    SP4.2 = 0.992
    From 'SP8' to:    SP4.3 = 0.992
  Preds:
    From WANT1 to:    WANT1 = 0.968
    From WANT2 to:    WANT2 = 0.968
    From KNOW1 to:    KNOW1 = 0.968
    From KNOW2 to:    KNOW2 = 0.968
    From HAVE1 to:    HAVE1 = 0.968
    From HAVE2 to:    HAVE2 = 0.968
    From 'ASK1' to:    ASK1 = 0.968
    From 'ASK2' to:    ASK2 = 0.968
    From 'ASK3' to:    ASK3 = 0.968
  Objs:
    From BOB to:    JILL = 0.970
    From JEN to:    SAM = 0.968
    From RIDE to:    SANDWICH = 0.968
    From CAR to:    SANDWICH = 0.968



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Ride * * * * *

Groups:

Props:
'P3':  [ 'ASK1' + BOB ] [ 'ASK2' + JEN ] [ 'ASK3' + RIDE ] 

Preds:
'ASK1':
   ORGANISM(1.000)
   PERSON(1.000)
   SOUL(1.000)
   LIVING_THING(1.000)
   BEING(1.000)
   MORTAL(1.000)
   INDIVIDUAL(1.000)
   SOMEONE(1.000)
   SOMEBODY(1.000)
   ANIMATE_THING(1.000)
   QUESTIONER(1.000)
   ARTICULATOR(1.000)
   QUERIER(1.000)
   COMMUNICATOR(1.000)
   UTTERER(1.000)
   TALKER(1.000)
   INQUIRER(1.000)
   SPEAKER(1.000)
   VERBALISER(1.000)
   ASKER(1.000)
   VERBALIZER(1.000)
   ENQUIRER(1.000)

'ASK2':
          NEED(0.333)
          REQUIRE(0.333)
   CONVEY10(1.000)
   PASS1(1.000)
   PUT_ACROSS(1.000)
   PASS_ON(1.000)
   COMMUNICATE1(1.000)
   TRANSFER1(1.000)
   DISPLACE2(1.000)
   TRANSMIT10(1.000)
   MOVE1(1.000)
   REQUEST1(1.000)
   COMMUNICATE10(1.000)
   BESPEAK(1.000)
   QUEST1(1.000)
   DEMAND(1.000)
   CALL_FOR4(1.000)
   PASS_ALONG(1.000)
          STATIVE(0.333)
   ACT(1.000)
          COMMUNICATION(0.333)
          TAKE(0.333)
   INTERACT(1.000)
   MOVE(1.000)
          LEAVE2(0.333)
   INTERCOMMUNICATE(1.000)
          ASK9(0.333)
          GIVE9(0.333)
          CALL_FOR(0.333)
          NECESSITATE(0.333)
          IMPART(0.333)
          INVOLVE7(0.333)
          INQUIRE1(0.333)
          TELL(0.333)
          FORMULATE(0.333)
          SHOW2(0.333)
          CONVEY(0.333)
          PHRASE(0.333)
          GIVE_VOICE(0.333)
          EXPECT(0.333)
          ASK(0.333)
          REQUIRE1(0.333)
          POSTULATE(0.333)
          ADDRESS(0.333)
   COMMUNICATE(1.000)
          INFORM(0.333)
          ARTICULATE2(0.333)
          ENQUIRE(0.333)
          EXPRESS1(0.333)
          EVINCE(0.333)
          PASS_ON3(0.333)
          WORD(0.333)
          ASK1(0.333)
          ASK2(0.333)
          ASK4(0.333)
          TURN_TO1(0.333)
          ASK5(0.333)

'ASK3':
   ASK_ROLE_3(1.000)
   OBJECT(1.000)


Objs:
Note: Auto-Generated Sym File
Note: "Jill wants a sandwich.  She knows Sam has one.  She asks him for a sandwich."
Note: "Bob wants a ride.  He knows Jen has a car.  He asks her for a ride."

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of sean/sandwich1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 


* * * * * * * * * * * * * * * * * * * * *
Parameters values:
    Neurally-plausible WM
    Semantic Noise = 0.0000
    Semantic Death = 0.0000
    Attention = 1.0000
    Within-group support = 1.0000
    Driver Inhibition = 1.0000
    Recip Inhibition = 0.5000
    Hebb Learning Rate = 1.0000
    Bail Upon Settling = False
    Using Vers142 Mapping Algorithm
* * * * * * * * * * * * * * * * * * * * *


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 4 of sean/sandwich1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P1:WANT (BOB, RIDE)
Seq. 1    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P2:HAVE (JEN, CAR)
Seq. 2    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P3:KNOW (BOB, P2)
Seq. 3    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P1:WANT (JILL, SANDWICH)
Seq. 4    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P2:HAVE (SAM, SANDWICH)
Seq. 5    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P3:KNOW (JILL, P2)
Seq. 6    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P4:ASK (JILL, SAM, SANDWICH)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From Sandwich to Ride:
  Groups:
  Props:
    From P1 (IC = 0.621) to:    P1 = 0.990
    From P2 (IC = 0.621) to:    P2 = 0.982
    From P3 (IC = 0.621) to:    P3 = 0.990
    From P4 (IC = 0.500) to:    'P3' = 0.993
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    SP2.1 = 0.993
    From SP2.2 to:    SP2.2 = 0.993
    From SP3.1 to:    SP3.1 = 0.993
    From SP3.2 to:    SP3.2 = 0.992
    From SP4.1 to:    'SP6' = 0.992
    From SP4.2 to:    'SP7' = 0.992
    From SP4.3 to:    'SP8' = 0.992
  Preds:
    From WANT1 to:    WANT1 = 0.968
    From WANT2 to:    WANT2 = 0.968
    From KNOW1 to:    KNOW1 = 0.968
    From KNOW2 to:    KNOW2 = 0.968
    From HAVE1 to:    HAVE1 = 0.968
    From HAVE2 to:    HAVE2 = 0.968
    From ASK1 to:    'ASK1' = 0.968
    From ASK2 to:    'ASK2' = 0.968
    From ASK3 to:    'ASK3' = 0.968
  Objs:
    From JILL to:    BOB = 0.970
    From SAM to:    JEN = 0.968
    From SANDWICH to:    RIDE = 0.968    CAR = 0.968

From Ride to Sandwich:
  Groups:
  Props:
    From P1 (IC = 0.621) to:    P1 = 0.990
    From P2 (IC = 0.621) to:    P2 = 0.982
    From P3 (IC = 0.621) to:    P3 = 0.990
    From 'P3' (IC = 0.247) to:    P4 = 0.993
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    SP2.1 = 0.993
    From SP2.2 to:    SP2.2 = 0.993
    From SP3.1 to:    SP3.1 = 0.993
    From SP3.2 to:    SP3.2 = 0.992
    From 'SP6' to:    SP4.1 = 0.992
    From 'SP7' to:    SP4.2 = 0.992
    From 'SP8' to:    SP4.3 = 0.992
  Preds:
    From WANT1 to:    WANT1 = 0.968
    From WANT2 to:    WANT2 = 0.968
    From KNOW1 to:    KNOW1 = 0.968
    From KNOW2 to:    KNOW2 = 0.968
    From HAVE1 to:    HAVE1 = 0.968
    From HAVE2 to:    HAVE2 = 0.968
    From 'ASK1' to:    ASK1 = 0.968
    From 'ASK2' to:    ASK2 = 0.968
    From 'ASK3' to:    ASK3 = 0.968
  Objs:
    From BOB to:    JILL = 0.970
    From JEN to:    SAM = 0.968
    From RIDE to:    SANDWICH = 0.968
    From CAR to:    SANDWICH = 0.968



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Ride * * * * *

Groups:

Props:
'P3':  [ 'ASK1' + BOB ] [ 'ASK2' + JEN ] [ 'ASK3' + RIDE ] 

Preds:
'ASK1':
   ORGANISM(1.000)
   PERSON(1.000)
   SOUL(1.000)
   LIVING_THING(1.000)
   BEING(1.000)
   MORTAL(1.000)
   INDIVIDUAL(1.000)
   SOMEONE(1.000)
   SOMEBODY(1.000)
   ANIMATE_THING(1.000)
   QUESTIONER(1.000)
   ARTICULATOR(1.000)
   QUERIER(1.000)
   COMMUNICATOR(1.000)
   UTTERER(1.000)
   TALKER(1.000)
   INQUIRER(1.000)
   SPEAKER(1.000)
   VERBALISER(1.000)
   ASKER(1.000)
   VERBALIZER(1.000)
   ENQUIRER(1.000)

'ASK2':
          NEED(0.333)
          REQUIRE(0.333)
   CONVEY10(1.000)
   PASS1(1.000)
   PUT_ACROSS(1.000)
   PASS_ON(1.000)
   COMMUNICATE1(1.000)
   TRANSFER1(1.000)
   DISPLACE2(1.000)
   TRANSMIT10(1.000)
   MOVE1(1.000)
   REQUEST1(1.000)
   COMMUNICATE10(1.000)
   BESPEAK(1.000)
   QUEST1(1.000)
   DEMAND(1.000)
   CALL_FOR4(1.000)
   PASS_ALONG(1.000)
          STATIVE(0.333)
   ACT(1.000)
          COMMUNICATION(0.333)
          TAKE(0.333)
   INTERACT(1.000)
   MOVE(1.000)
          LEAVE2(0.333)
   INTERCOMMUNICATE(1.000)
          ASK9(0.333)
          GIVE9(0.333)
          CALL_FOR(0.333)
          NECESSITATE(0.333)
          IMPART(0.333)
          INVOLVE7(0.333)
          INQUIRE1(0.333)
          TELL(0.333)
          FORMULATE(0.333)
          SHOW2(0.333)
          CONVEY(0.333)
          PHRASE(0.333)
          GIVE_VOICE(0.333)
          EXPECT(0.333)
          ASK(0.333)
          REQUIRE1(0.333)
          POSTULATE(0.333)
          ADDRESS(0.333)
   COMMUNICATE(1.000)
          INFORM(0.333)
          ARTICULATE2(0.333)
          ENQUIRE(0.333)
          EXPRESS1(0.333)
          EVINCE(0.333)
          PASS_ON3(0.333)
          WORD(0.333)
          ASK1(0.333)
          ASK2(0.333)
          ASK4(0.333)
          TURN_TO1(0.333)
          ASK5(0.333)

'ASK3':
   ASK_ROLE_3(1.000)
   OBJECT(1.000)


Objs:
Note: Auto-Generated Sym File
Note: "Jill wants a sandwich.  She knows Sam has one.  She asks him for a sandwich."
Note: "Bob wants a ride.  He knows Jen has a car.  He asks her for a ride."

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of sean/sandwich1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 


* * * * * * * * * * * * * * * * * * * * *
Parameters values:
    Neurally-plausible WM
    Semantic Noise = 0.0000
    Semantic Death = 0.0000
    Attention = 1.0000
    Within-group support = 1.0000
    Driver Inhibition = 1.0000
    Recip Inhibition = 0.5000
    Hebb Learning Rate = 1.0000
    Bail Upon Settling = False
    Using Vers142 Mapping Algorithm
* * * * * * * * * * * * * * * * * * * * *


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 5 of sean/sandwich1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P1:WANT (BOB, RIDE)
Seq. 1    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P2:HAVE (JEN, CAR)
Seq. 2    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P3:KNOW (BOB, P2)
Seq. 3    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P1:WANT (JILL, SANDWICH)
Seq. 4    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P2:HAVE (SAM, SANDWICH)
Seq. 5    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P3:KNOW (JILL, P2)
Seq. 6    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P4:ASK (JILL, SAM, SANDWICH)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From Sandwich to Ride:
  Groups:
  Props:
    From P1 (IC = 0.621) to:    P1 = 0.990
    From P2 (IC = 0.621) to:    P2 = 0.982
    From P3 (IC = 0.621) to:    P3 = 0.990
    From P4 (IC = 0.500) to:    'P3' = 0.993
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    SP2.1 = 0.993
    From SP2.2 to:    SP2.2 = 0.993
    From SP3.1 to:    SP3.1 = 0.993
    From SP3.2 to:    SP3.2 = 0.992
    From SP4.1 to:    'SP6' = 0.992
    From SP4.2 to:    'SP7' = 0.992
    From SP4.3 to:    'SP8' = 0.992
  Preds:
    From WANT1 to:    WANT1 = 0.968
    From WANT2 to:    WANT2 = 0.968
    From KNOW1 to:    KNOW1 = 0.968
    From KNOW2 to:    KNOW2 = 0.968
    From HAVE1 to:    HAVE1 = 0.968
    From HAVE2 to:    HAVE2 = 0.968
    From ASK1 to:    'ASK1' = 0.968
    From ASK2 to:    'ASK2' = 0.968
    From ASK3 to:    'ASK3' = 0.968
  Objs:
    From JILL to:    BOB = 0.970
    From SAM to:    JEN = 0.968
    From SANDWICH to:    RIDE = 0.968    CAR = 0.968

From Ride to Sandwich:
  Groups:
  Props:
    From P1 (IC = 0.621) to:    P1 = 0.990
    From P2 (IC = 0.621) to:    P2 = 0.982
    From P3 (IC = 0.621) to:    P3 = 0.990
    From 'P3' (IC = 0.247) to:    P4 = 0.993
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    SP2.1 = 0.993
    From SP2.2 to:    SP2.2 = 0.993
    From SP3.1 to:    SP3.1 = 0.993
    From SP3.2 to:    SP3.2 = 0.992
    From 'SP6' to:    SP4.1 = 0.992
    From 'SP7' to:    SP4.2 = 0.992
    From 'SP8' to:    SP4.3 = 0.992
  Preds:
    From WANT1 to:    WANT1 = 0.968
    From WANT2 to:    WANT2 = 0.968
    From KNOW1 to:    KNOW1 = 0.968
    From KNOW2 to:    KNOW2 = 0.968
    From HAVE1 to:    HAVE1 = 0.968
    From HAVE2 to:    HAVE2 = 0.968
    From 'ASK1' to:    ASK1 = 0.968
    From 'ASK2' to:    ASK2 = 0.968
    From 'ASK3' to:    ASK3 = 0.968
  Objs:
    From BOB to:    JILL = 0.970
    From JEN to:    SAM = 0.968
    From RIDE to:    SANDWICH = 0.968
    From CAR to:    SANDWICH = 0.968



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Ride * * * * *

Groups:

Props:
'P3':  [ 'ASK1' + BOB ] [ 'ASK2' + JEN ] [ 'ASK3' + RIDE ] 

Preds:
'ASK1':
   ORGANISM(1.000)
   PERSON(1.000)
   SOUL(1.000)
   LIVING_THING(1.000)
   BEING(1.000)
   MORTAL(1.000)
   INDIVIDUAL(1.000)
   SOMEONE(1.000)
   SOMEBODY(1.000)
   ANIMATE_THING(1.000)
   QUESTIONER(1.000)
   ARTICULATOR(1.000)
   QUERIER(1.000)
   COMMUNICATOR(1.000)
   UTTERER(1.000)
   TALKER(1.000)
   INQUIRER(1.000)
   SPEAKER(1.000)
   VERBALISER(1.000)
   ASKER(1.000)
   VERBALIZER(1.000)
   ENQUIRER(1.000)

'ASK2':
          NEED(0.333)
          REQUIRE(0.333)
   CONVEY10(1.000)
   PASS1(1.000)
   PUT_ACROSS(1.000)
   PASS_ON(1.000)
   COMMUNICATE1(1.000)
   TRANSFER1(1.000)
   DISPLACE2(1.000)
   TRANSMIT10(1.000)
   MOVE1(1.000)
   REQUEST1(1.000)
   COMMUNICATE10(1.000)
   BESPEAK(1.000)
   QUEST1(1.000)
   DEMAND(1.000)
   CALL_FOR4(1.000)
   PASS_ALONG(1.000)
          STATIVE(0.333)
   ACT(1.000)
          COMMUNICATION(0.333)
          TAKE(0.333)
   INTERACT(1.000)
   MOVE(1.000)
          LEAVE2(0.333)
   INTERCOMMUNICATE(1.000)
          ASK9(0.333)
          GIVE9(0.333)
          CALL_FOR(0.333)
          NECESSITATE(0.333)
          IMPART(0.333)
          INVOLVE7(0.333)
          INQUIRE1(0.333)
          TELL(0.333)
          FORMULATE(0.333)
          SHOW2(0.333)
          CONVEY(0.333)
          PHRASE(0.333)
          GIVE_VOICE(0.333)
          EXPECT(0.333)
          ASK(0.333)
          REQUIRE1(0.333)
          POSTULATE(0.333)
          ADDRESS(0.333)
   COMMUNICATE(1.000)
          INFORM(0.333)
          ARTICULATE2(0.333)
          ENQUIRE(0.333)
          EXPRESS1(0.333)
          EVINCE(0.333)
          PASS_ON3(0.333)
          WORD(0.333)
          ASK1(0.333)
          ASK2(0.333)
          ASK4(0.333)
          TURN_TO1(0.333)
          ASK5(0.333)

'ASK3':
   ASK_ROLE_3(1.000)
   OBJECT(1.000)


Objs:
Note: Auto-Generated Sym File
Note: "Jill wants a sandwich.  She knows Sam has one.  She asks him for a sandwich."
Note: "Bob wants a ride.  He knows Jen has a car.  He asks her for a ride."

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of sean/sandwich1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 


* * * * * * * * * * * * * * * * * * * * *
Parameters values:
    Neurally-plausible WM
    Semantic Noise = 0.0000
    Semantic Death = 0.0000
    Attention = 1.0000
    Within-group support = 1.0000
    Driver Inhibition = 1.0000
    Recip Inhibition = 0.5000
    Hebb Learning Rate = 1.0000
    Bail Upon Settling = False
    Using Vers142 Mapping Algorithm
* * * * * * * * * * * * * * * * * * * * *


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 6 of sean/sandwich1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P1:WANT (BOB, RIDE)
Seq. 1    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P2:HAVE (JEN, CAR)
Seq. 2    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P3:KNOW (BOB, P2)
Seq. 3    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P1:WANT (JILL, SANDWICH)
Seq. 4    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P2:HAVE (SAM, SANDWICH)
Seq. 5    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P3:KNOW (JILL, P2)
Seq. 6    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P4:ASK (JILL, SAM, SANDWICH)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From Sandwich to Ride:
  Groups:
  Props:
    From P1 (IC = 0.621) to:    P1 = 0.990
    From P2 (IC = 0.621) to:    P2 = 0.982
    From P3 (IC = 0.621) to:    P3 = 0.990
    From P4 (IC = 0.500) to:    'P3' = 0.993
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    SP2.1 = 0.993
    From SP2.2 to:    SP2.2 = 0.993
    From SP3.1 to:    SP3.1 = 0.993
    From SP3.2 to:    SP3.2 = 0.992
    From SP4.1 to:    'SP6' = 0.992
    From SP4.2 to:    'SP7' = 0.992
    From SP4.3 to:    'SP8' = 0.992
  Preds:
    From WANT1 to:    WANT1 = 0.968
    From WANT2 to:    WANT2 = 0.968
    From KNOW1 to:    KNOW1 = 0.968
    From KNOW2 to:    KNOW2 = 0.968
    From HAVE1 to:    HAVE1 = 0.968
    From HAVE2 to:    HAVE2 = 0.968
    From ASK1 to:    'ASK1' = 0.968
    From ASK2 to:    'ASK2' = 0.968
    From ASK3 to:    'ASK3' = 0.968
  Objs:
    From JILL to:    BOB = 0.970
    From SAM to:    JEN = 0.968
    From SANDWICH to:    RIDE = 0.968    CAR = 0.968

From Ride to Sandwich:
  Groups:
  Props:
    From P1 (IC = 0.621) to:    P1 = 0.990
    From P2 (IC = 0.621) to:    P2 = 0.982
    From P3 (IC = 0.621) to:    P3 = 0.990
    From 'P3' (IC = 0.247) to:    P4 = 0.993
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    SP2.1 = 0.993
    From SP2.2 to:    SP2.2 = 0.993
    From SP3.1 to:    SP3.1 = 0.993
    From SP3.2 to:    SP3.2 = 0.992
    From 'SP6' to:    SP4.1 = 0.992
    From 'SP7' to:    SP4.2 = 0.992
    From 'SP8' to:    SP4.3 = 0.992
  Preds:
    From WANT1 to:    WANT1 = 0.968
    From WANT2 to:    WANT2 = 0.968
    From KNOW1 to:    KNOW1 = 0.968
    From KNOW2 to:    KNOW2 = 0.968
    From HAVE1 to:    HAVE1 = 0.968
    From HAVE2 to:    HAVE2 = 0.968
    From 'ASK1' to:    ASK1 = 0.968
    From 'ASK2' to:    ASK2 = 0.968
    From 'ASK3' to:    ASK3 = 0.968
  Objs:
    From BOB to:    JILL = 0.970
    From JEN to:    SAM = 0.968
    From RIDE to:    SANDWICH = 0.968
    From CAR to:    SANDWICH = 0.968



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Ride * * * * *

Groups:

Props:
'P3':  [ 'ASK1' + BOB ] [ 'ASK2' + JEN ] [ 'ASK3' + RIDE ] 

Preds:
'ASK1':
   ORGANISM(1.000)
   PERSON(1.000)
   SOUL(1.000)
   LIVING_THING(1.000)
   BEING(1.000)
   MORTAL(1.000)
   INDIVIDUAL(1.000)
   SOMEONE(1.000)
   SOMEBODY(1.000)
   ANIMATE_THING(1.000)
   QUESTIONER(1.000)
   ARTICULATOR(1.000)
   QUERIER(1.000)
   COMMUNICATOR(1.000)
   UTTERER(1.000)
   TALKER(1.000)
   INQUIRER(1.000)
   SPEAKER(1.000)
   VERBALISER(1.000)
   ASKER(1.000)
   VERBALIZER(1.000)
   ENQUIRER(1.000)

'ASK2':
          NEED(0.333)
          REQUIRE(0.333)
   CONVEY10(1.000)
   PASS1(1.000)
   PUT_ACROSS(1.000)
   PASS_ON(1.000)
   COMMUNICATE1(1.000)
   TRANSFER1(1.000)
   DISPLACE2(1.000)
   TRANSMIT10(1.000)
   MOVE1(1.000)
   REQUEST1(1.000)
   COMMUNICATE10(1.000)
   BESPEAK(1.000)
   QUEST1(1.000)
   DEMAND(1.000)
   CALL_FOR4(1.000)
   PASS_ALONG(1.000)
          STATIVE(0.333)
   ACT(1.000)
          COMMUNICATION(0.333)
          TAKE(0.333)
   INTERACT(1.000)
   MOVE(1.000)
          LEAVE2(0.333)
   INTERCOMMUNICATE(1.000)
          ASK9(0.333)
          GIVE9(0.333)
          CALL_FOR(0.333)
          NECESSITATE(0.333)
          IMPART(0.333)
          INVOLVE7(0.333)
          INQUIRE1(0.333)
          TELL(0.333)
          FORMULATE(0.333)
          SHOW2(0.333)
          CONVEY(0.333)
          PHRASE(0.333)
          GIVE_VOICE(0.333)
          EXPECT(0.333)
          ASK(0.333)
          REQUIRE1(0.333)
          POSTULATE(0.333)
          ADDRESS(0.333)
   COMMUNICATE(1.000)
          INFORM(0.333)
          ARTICULATE2(0.333)
          ENQUIRE(0.333)
          EXPRESS1(0.333)
          EVINCE(0.333)
          PASS_ON3(0.333)
          WORD(0.333)
          ASK1(0.333)
          ASK2(0.333)
          ASK4(0.333)
          TURN_TO1(0.333)
          ASK5(0.333)

'ASK3':
   ASK_ROLE_3(1.000)
   OBJECT(1.000)


Objs:
Note: Auto-Generated Sym File
Note: "Jill wants a sandwich.  She knows Sam has one.  She asks him for a sandwich."
Note: "Bob wants a ride.  He knows Jen has a car.  He asks her for a ride."

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of sean/sandwich1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 


* * * * * * * * * * * * * * * * * * * * *
Parameters values:
    Neurally-plausible WM
    Semantic Noise = 0.0000
    Semantic Death = 0.0000
    Attention = 1.0000
    Within-group support = 1.0000
    Driver Inhibition = 1.0000
    Recip Inhibition = 0.5000
    Hebb Learning Rate = 1.0000
    Bail Upon Settling = False
    Using Vers142 Mapping Algorithm
* * * * * * * * * * * * * * * * * * * * *


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 7 of sean/sandwich1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P1:WANT (BOB, RIDE)
Seq. 1    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P2:HAVE (JEN, CAR)
Seq. 2    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P3:KNOW (BOB, P2)
Seq. 3    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P1:WANT (JILL, SANDWICH)
Seq. 4    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P2:HAVE (SAM, SANDWICH)
Seq. 5    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P3:KNOW (JILL, P2)
Seq. 6    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P4:ASK (JILL, SAM, SANDWICH)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From Sandwich to Ride:
  Groups:
  Props:
    From P1 (IC = 0.621) to:    P1 = 0.990
    From P2 (IC = 0.621) to:    P2 = 0.982
    From P3 (IC = 0.621) to:    P3 = 0.990
    From P4 (IC = 0.500) to:    'P3' = 0.993
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    SP2.1 = 0.993
    From SP2.2 to:    SP2.2 = 0.993
    From SP3.1 to:    SP3.1 = 0.993
    From SP3.2 to:    SP3.2 = 0.992
    From SP4.1 to:    'SP6' = 0.992
    From SP4.2 to:    'SP7' = 0.992
    From SP4.3 to:    'SP8' = 0.992
  Preds:
    From WANT1 to:    WANT1 = 0.968
    From WANT2 to:    WANT2 = 0.968
    From KNOW1 to:    KNOW1 = 0.968
    From KNOW2 to:    KNOW2 = 0.968
    From HAVE1 to:    HAVE1 = 0.968
    From HAVE2 to:    HAVE2 = 0.968
    From ASK1 to:    'ASK1' = 0.968
    From ASK2 to:    'ASK2' = 0.968
    From ASK3 to:    'ASK3' = 0.968
  Objs:
    From JILL to:    BOB = 0.970
    From SAM to:    JEN = 0.968
    From SANDWICH to:    RIDE = 0.968    CAR = 0.968

From Ride to Sandwich:
  Groups:
  Props:
    From P1 (IC = 0.621) to:    P1 = 0.990
    From P2 (IC = 0.621) to:    P2 = 0.982
    From P3 (IC = 0.621) to:    P3 = 0.990
    From 'P3' (IC = 0.247) to:    P4 = 0.993
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    SP2.1 = 0.993
    From SP2.2 to:    SP2.2 = 0.993
    From SP3.1 to:    SP3.1 = 0.993
    From SP3.2 to:    SP3.2 = 0.992
    From 'SP6' to:    SP4.1 = 0.992
    From 'SP7' to:    SP4.2 = 0.992
    From 'SP8' to:    SP4.3 = 0.992
  Preds:
    From WANT1 to:    WANT1 = 0.968
    From WANT2 to:    WANT2 = 0.968
    From KNOW1 to:    KNOW1 = 0.968
    From KNOW2 to:    KNOW2 = 0.968
    From HAVE1 to:    HAVE1 = 0.968
    From HAVE2 to:    HAVE2 = 0.968
    From 'ASK1' to:    ASK1 = 0.968
    From 'ASK2' to:    ASK2 = 0.968
    From 'ASK3' to:    ASK3 = 0.968
  Objs:
    From BOB to:    JILL = 0.970
    From JEN to:    SAM = 0.968
    From RIDE to:    SANDWICH = 0.968
    From CAR to:    SANDWICH = 0.968



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Ride * * * * *

Groups:

Props:
'P3':  [ 'ASK1' + BOB ] [ 'ASK2' + JEN ] [ 'ASK3' + RIDE ] 

Preds:
'ASK1':
   ORGANISM(1.000)
   PERSON(1.000)
   SOUL(1.000)
   LIVING_THING(1.000)
   BEING(1.000)
   MORTAL(1.000)
   INDIVIDUAL(1.000)
   SOMEONE(1.000)
   SOMEBODY(1.000)
   ANIMATE_THING(1.000)
   QUESTIONER(1.000)
   ARTICULATOR(1.000)
   QUERIER(1.000)
   COMMUNICATOR(1.000)
   UTTERER(1.000)
   TALKER(1.000)
   INQUIRER(1.000)
   SPEAKER(1.000)
   VERBALISER(1.000)
   ASKER(1.000)
   VERBALIZER(1.000)
   ENQUIRER(1.000)

'ASK2':
          NEED(0.333)
          REQUIRE(0.333)
   CONVEY10(1.000)
   PASS1(1.000)
   PUT_ACROSS(1.000)
   PASS_ON(1.000)
   COMMUNICATE1(1.000)
   TRANSFER1(1.000)
   DISPLACE2(1.000)
   TRANSMIT10(1.000)
   MOVE1(1.000)
   REQUEST1(1.000)
   COMMUNICATE10(1.000)
   BESPEAK(1.000)
   QUEST1(1.000)
   DEMAND(1.000)
   CALL_FOR4(1.000)
   PASS_ALONG(1.000)
          STATIVE(0.333)
   ACT(1.000)
          COMMUNICATION(0.333)
          TAKE(0.333)
   INTERACT(1.000)
   MOVE(1.000)
          LEAVE2(0.333)
   INTERCOMMUNICATE(1.000)
          ASK9(0.333)
          GIVE9(0.333)
          CALL_FOR(0.333)
          NECESSITATE(0.333)
          IMPART(0.333)
          INVOLVE7(0.333)
          INQUIRE1(0.333)
          TELL(0.333)
          FORMULATE(0.333)
          SHOW2(0.333)
          CONVEY(0.333)
          PHRASE(0.333)
          GIVE_VOICE(0.333)
          EXPECT(0.333)
          ASK(0.333)
          REQUIRE1(0.333)
          POSTULATE(0.333)
          ADDRESS(0.333)
   COMMUNICATE(1.000)
          INFORM(0.333)
          ARTICULATE2(0.333)
          ENQUIRE(0.333)
          EXPRESS1(0.333)
          EVINCE(0.333)
          PASS_ON3(0.333)
          WORD(0.333)
          ASK1(0.333)
          ASK2(0.333)
          ASK4(0.333)
          TURN_TO1(0.333)
          ASK5(0.333)

'ASK3':
   ASK_ROLE_3(1.000)
   OBJECT(1.000)


Objs:
Note: Auto-Generated Sym File
Note: "Jill wants a sandwich.  She knows Sam has one.  She asks him for a sandwich."
Note: "Bob wants a ride.  He knows Jen has a car.  He asks her for a ride."

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of sean/sandwich1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 


* * * * * * * * * * * * * * * * * * * * *
Parameters values:
    Neurally-plausible WM
    Semantic Noise = 0.0000
    Semantic Death = 0.0000
    Attention = 1.0000
    Within-group support = 1.0000
    Driver Inhibition = 1.0000
    Recip Inhibition = 0.5000
    Hebb Learning Rate = 1.0000
    Bail Upon Settling = False
    Using Vers142 Mapping Algorithm
* * * * * * * * * * * * * * * * * * * * *


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 8 of sean/sandwich1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P1:WANT (BOB, RIDE)
Seq. 1    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P2:HAVE (JEN, CAR)
Seq. 2    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P3:KNOW (BOB, P2)
Seq. 3    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P1:WANT (JILL, SANDWICH)
Seq. 4    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P2:HAVE (SAM, SANDWICH)
Seq. 5    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P3:KNOW (JILL, P2)
Seq. 6    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P4:ASK (JILL, SAM, SANDWICH)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From Sandwich to Ride:
  Groups:
  Props:
    From P1 (IC = 0.621) to:    P1 = 0.990
    From P2 (IC = 0.621) to:    P2 = 0.982
    From P3 (IC = 0.621) to:    P3 = 0.990
    From P4 (IC = 0.500) to:    'P3' = 0.993
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    SP2.1 = 0.993
    From SP2.2 to:    SP2.2 = 0.993
    From SP3.1 to:    SP3.1 = 0.993
    From SP3.2 to:    SP3.2 = 0.992
    From SP4.1 to:    'SP6' = 0.992
    From SP4.2 to:    'SP7' = 0.992
    From SP4.3 to:    'SP8' = 0.992
  Preds:
    From WANT1 to:    WANT1 = 0.968
    From WANT2 to:    WANT2 = 0.968
    From KNOW1 to:    KNOW1 = 0.968
    From KNOW2 to:    KNOW2 = 0.968
    From HAVE1 to:    HAVE1 = 0.968
    From HAVE2 to:    HAVE2 = 0.968
    From ASK1 to:    'ASK1' = 0.968
    From ASK2 to:    'ASK2' = 0.968
    From ASK3 to:    'ASK3' = 0.968
  Objs:
    From JILL to:    BOB = 0.970
    From SAM to:    JEN = 0.968
    From SANDWICH to:    RIDE = 0.968    CAR = 0.968

From Ride to Sandwich:
  Groups:
  Props:
    From P1 (IC = 0.621) to:    P1 = 0.990
    From P2 (IC = 0.621) to:    P2 = 0.982
    From P3 (IC = 0.621) to:    P3 = 0.990
    From 'P3' (IC = 0.247) to:    P4 = 0.993
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    SP2.1 = 0.993
    From SP2.2 to:    SP2.2 = 0.993
    From SP3.1 to:    SP3.1 = 0.993
    From SP3.2 to:    SP3.2 = 0.992
    From 'SP6' to:    SP4.1 = 0.992
    From 'SP7' to:    SP4.2 = 0.992
    From 'SP8' to:    SP4.3 = 0.992
  Preds:
    From WANT1 to:    WANT1 = 0.968
    From WANT2 to:    WANT2 = 0.968
    From KNOW1 to:    KNOW1 = 0.968
    From KNOW2 to:    KNOW2 = 0.968
    From HAVE1 to:    HAVE1 = 0.968
    From HAVE2 to:    HAVE2 = 0.968
    From 'ASK1' to:    ASK1 = 0.968
    From 'ASK2' to:    ASK2 = 0.968
    From 'ASK3' to:    ASK3 = 0.968
  Objs:
    From BOB to:    JILL = 0.970
    From JEN to:    SAM = 0.968
    From RIDE to:    SANDWICH = 0.968
    From CAR to:    SANDWICH = 0.968



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Ride * * * * *

Groups:

Props:
'P3':  [ 'ASK1' + BOB ] [ 'ASK2' + JEN ] [ 'ASK3' + RIDE ] 

Preds:
'ASK1':
   ORGANISM(1.000)
   PERSON(1.000)
   SOUL(1.000)
   LIVING_THING(1.000)
   BEING(1.000)
   MORTAL(1.000)
   INDIVIDUAL(1.000)
   SOMEONE(1.000)
   SOMEBODY(1.000)
   ANIMATE_THING(1.000)
   QUESTIONER(1.000)
   ARTICULATOR(1.000)
   QUERIER(1.000)
   COMMUNICATOR(1.000)
   UTTERER(1.000)
   TALKER(1.000)
   INQUIRER(1.000)
   SPEAKER(1.000)
   VERBALISER(1.000)
   ASKER(1.000)
   VERBALIZER(1.000)
   ENQUIRER(1.000)

'ASK2':
          NEED(0.333)
          REQUIRE(0.333)
   CONVEY10(1.000)
   PASS1(1.000)
   PUT_ACROSS(1.000)
   PASS_ON(1.000)
   COMMUNICATE1(1.000)
   TRANSFER1(1.000)
   DISPLACE2(1.000)
   TRANSMIT10(1.000)
   MOVE1(1.000)
   REQUEST1(1.000)
   COMMUNICATE10(1.000)
   BESPEAK(1.000)
   QUEST1(1.000)
   DEMAND(1.000)
   CALL_FOR4(1.000)
   PASS_ALONG(1.000)
          STATIVE(0.333)
   ACT(1.000)
          COMMUNICATION(0.333)
          TAKE(0.333)
   INTERACT(1.000)
   MOVE(1.000)
          LEAVE2(0.333)
   INTERCOMMUNICATE(1.000)
          ASK9(0.333)
          GIVE9(0.333)
          CALL_FOR(0.333)
          NECESSITATE(0.333)
          IMPART(0.333)
          INVOLVE7(0.333)
          INQUIRE1(0.333)
          TELL(0.333)
          FORMULATE(0.333)
          SHOW2(0.333)
          CONVEY(0.333)
          PHRASE(0.333)
          GIVE_VOICE(0.333)
          EXPECT(0.333)
          ASK(0.333)
          REQUIRE1(0.333)
          POSTULATE(0.333)
          ADDRESS(0.333)
   COMMUNICATE(1.000)
          INFORM(0.333)
          ARTICULATE2(0.333)
          ENQUIRE(0.333)
          EXPRESS1(0.333)
          EVINCE(0.333)
          PASS_ON3(0.333)
          WORD(0.333)
          ASK1(0.333)
          ASK2(0.333)
          ASK4(0.333)
          TURN_TO1(0.333)
          ASK5(0.333)

'ASK3':
   ASK_ROLE_3(1.000)
   OBJECT(1.000)


Objs:
Note: Auto-Generated Sym File
Note: "Jill wants a sandwich.  She knows Sam has one.  She asks him for a sandwich."
Note: "Bob wants a ride.  He knows Jen has a car.  He asks her for a ride."

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of sean/sandwich1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 


* * * * * * * * * * * * * * * * * * * * *
Parameters values:
    Neurally-plausible WM
    Semantic Noise = 0.0000
    Semantic Death = 0.0000
    Attention = 1.0000
    Within-group support = 1.0000
    Driver Inhibition = 1.0000
    Recip Inhibition = 0.5000
    Hebb Learning Rate = 1.0000
    Bail Upon Settling = False
    Using Vers142 Mapping Algorithm
* * * * * * * * * * * * * * * * * * * * *


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 9 of sean/sandwich1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P1:WANT (BOB, RIDE)
Seq. 1    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P2:HAVE (JEN, CAR)
Seq. 2    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P3:KNOW (BOB, P2)
Seq. 3    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P1:WANT (JILL, SANDWICH)
Seq. 4    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P2:HAVE (SAM, SANDWICH)
Seq. 5    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P3:KNOW (JILL, P2)
Seq. 6    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P4:ASK (JILL, SAM, SANDWICH)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From Sandwich to Ride:
  Groups:
  Props:
    From P1 (IC = 0.621) to:    P1 = 0.990
    From P2 (IC = 0.621) to:    P2 = 0.982
    From P3 (IC = 0.621) to:    P3 = 0.990
    From P4 (IC = 0.500) to:    'P3' = 0.993
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    SP2.1 = 0.993
    From SP2.2 to:    SP2.2 = 0.993
    From SP3.1 to:    SP3.1 = 0.993
    From SP3.2 to:    SP3.2 = 0.992
    From SP4.1 to:    'SP6' = 0.992
    From SP4.2 to:    'SP7' = 0.992
    From SP4.3 to:    'SP8' = 0.992
  Preds:
    From WANT1 to:    WANT1 = 0.968
    From WANT2 to:    WANT2 = 0.968
    From KNOW1 to:    KNOW1 = 0.968
    From KNOW2 to:    KNOW2 = 0.968
    From HAVE1 to:    HAVE1 = 0.968
    From HAVE2 to:    HAVE2 = 0.968
    From ASK1 to:    'ASK1' = 0.968
    From ASK2 to:    'ASK2' = 0.968
    From ASK3 to:    'ASK3' = 0.968
  Objs:
    From JILL to:    BOB = 0.970
    From SAM to:    JEN = 0.968
    From SANDWICH to:    RIDE = 0.968    CAR = 0.968

From Ride to Sandwich:
  Groups:
  Props:
    From P1 (IC = 0.621) to:    P1 = 0.990
    From P2 (IC = 0.621) to:    P2 = 0.982
    From P3 (IC = 0.621) to:    P3 = 0.990
    From 'P3' (IC = 0.247) to:    P4 = 0.993
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    SP2.1 = 0.993
    From SP2.2 to:    SP2.2 = 0.993
    From SP3.1 to:    SP3.1 = 0.993
    From SP3.2 to:    SP3.2 = 0.992
    From 'SP6' to:    SP4.1 = 0.992
    From 'SP7' to:    SP4.2 = 0.992
    From 'SP8' to:    SP4.3 = 0.992
  Preds:
    From WANT1 to:    WANT1 = 0.968
    From WANT2 to:    WANT2 = 0.968
    From KNOW1 to:    KNOW1 = 0.968
    From KNOW2 to:    KNOW2 = 0.968
    From HAVE1 to:    HAVE1 = 0.968
    From HAVE2 to:    HAVE2 = 0.968
    From 'ASK1' to:    ASK1 = 0.968
    From 'ASK2' to:    ASK2 = 0.968
    From 'ASK3' to:    ASK3 = 0.968
  Objs:
    From BOB to:    JILL = 0.970
    From JEN to:    SAM = 0.968
    From RIDE to:    SANDWICH = 0.968
    From CAR to:    SANDWICH = 0.968



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Ride * * * * *

Groups:

Props:
'P3':  [ 'ASK1' + BOB ] [ 'ASK2' + JEN ] [ 'ASK3' + RIDE ] 

Preds:
'ASK1':
   ORGANISM(1.000)
   PERSON(1.000)
   SOUL(1.000)
   LIVING_THING(1.000)
   BEING(1.000)
   MORTAL(1.000)
   INDIVIDUAL(1.000)
   SOMEONE(1.000)
   SOMEBODY(1.000)
   ANIMATE_THING(1.000)
   QUESTIONER(1.000)
   ARTICULATOR(1.000)
   QUERIER(1.000)
   COMMUNICATOR(1.000)
   UTTERER(1.000)
   TALKER(1.000)
   INQUIRER(1.000)
   SPEAKER(1.000)
   VERBALISER(1.000)
   ASKER(1.000)
   VERBALIZER(1.000)
   ENQUIRER(1.000)

'ASK2':
          NEED(0.333)
          REQUIRE(0.333)
   CONVEY10(1.000)
   PASS1(1.000)
   PUT_ACROSS(1.000)
   PASS_ON(1.000)
   COMMUNICATE1(1.000)
   TRANSFER1(1.000)
   DISPLACE2(1.000)
   TRANSMIT10(1.000)
   MOVE1(1.000)
   REQUEST1(1.000)
   COMMUNICATE10(1.000)
   BESPEAK(1.000)
   QUEST1(1.000)
   DEMAND(1.000)
   CALL_FOR4(1.000)
   PASS_ALONG(1.000)
          STATIVE(0.333)
   ACT(1.000)
          COMMUNICATION(0.333)
          TAKE(0.333)
   INTERACT(1.000)
   MOVE(1.000)
          LEAVE2(0.333)
   INTERCOMMUNICATE(1.000)
          ASK9(0.333)
          GIVE9(0.333)
          CALL_FOR(0.333)
          NECESSITATE(0.333)
          IMPART(0.333)
          INVOLVE7(0.333)
          INQUIRE1(0.333)
          TELL(0.333)
          FORMULATE(0.333)
          SHOW2(0.333)
          CONVEY(0.333)
          PHRASE(0.333)
          GIVE_VOICE(0.333)
          EXPECT(0.333)
          ASK(0.333)
          REQUIRE1(0.333)
          POSTULATE(0.333)
          ADDRESS(0.333)
   COMMUNICATE(1.000)
          INFORM(0.333)
          ARTICULATE2(0.333)
          ENQUIRE(0.333)
          EXPRESS1(0.333)
          EVINCE(0.333)
          PASS_ON3(0.333)
          WORD(0.333)
          ASK1(0.333)
          ASK2(0.333)
          ASK4(0.333)
          TURN_TO1(0.333)
          ASK5(0.333)

'ASK3':
   ASK_ROLE_3(1.000)
   OBJECT(1.000)


Objs:
Note: Auto-Generated Sym File
Note: "Jill wants a sandwich.  She knows Sam has one.  She asks him for a sandwich."
Note: "Bob wants a ride.  He knows Jen has a car.  He asks her for a ride."

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 10 runs of sean/sandwich1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 


* * * * * * * * * * * * * * * * * * * * *
Parameters values:
    Neurally-plausible WM
    Semantic Noise = 0.0000
    Semantic Death = 0.0000
    Attention = 1.0000
    Within-group support = 1.0000
    Driver Inhibition = 1.0000
    Recip Inhibition = 0.5000
    Hebb Learning Rate = 1.0000
    Bail Upon Settling = False
    Using Vers142 Mapping Algorithm
* * * * * * * * * * * * * * * * * * * * *


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 10 of sean/sandwich1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P1:WANT (BOB, RIDE)
Seq. 1    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P2:HAVE (JEN, CAR)
Seq. 2    Driver:Ride    Recip : Sandwich    Fire control:props    Goals: NORMAL     Phase set: P3:KNOW (BOB, P2)
Seq. 3    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P1:WANT (JILL, SANDWICH)
Seq. 4    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P2:HAVE (SAM, SANDWICH)
Seq. 5    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P3:KNOW (JILL, P2)
Seq. 6    Driver:Sandwich    Recip : Ride    Fire control:props    Goals: NORMAL     Phase set: P4:ASK (JILL, SAM, SANDWICH)


* * * * * * * * * * * * * * * *
* * * Mapping Connections * * *
* * * * * * * * * * * * * * * *

From Sandwich to Ride:
  Groups:
  Props:
    From P1 (IC = 0.621) to:    P1 = 0.990
    From P2 (IC = 0.621) to:    P2 = 0.982
    From P3 (IC = 0.621) to:    P3 = 0.990
    From P4 (IC = 0.500) to:    'P3' = 0.993
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    SP2.1 = 0.993
    From SP2.2 to:    SP2.2 = 0.993
    From SP3.1 to:    SP3.1 = 0.993
    From SP3.2 to:    SP3.2 = 0.992
    From SP4.1 to:    'SP6' = 0.992
    From SP4.2 to:    'SP7' = 0.992
    From SP4.3 to:    'SP8' = 0.992
  Preds:
    From WANT1 to:    WANT1 = 0.968
    From WANT2 to:    WANT2 = 0.968
    From KNOW1 to:    KNOW1 = 0.968
    From KNOW2 to:    KNOW2 = 0.968
    From HAVE1 to:    HAVE1 = 0.968
    From HAVE2 to:    HAVE2 = 0.968
    From ASK1 to:    'ASK1' = 0.968
    From ASK2 to:    'ASK2' = 0.968
    From ASK3 to:    'ASK3' = 0.968
  Objs:
    From JILL to:    BOB = 0.970
    From SAM to:    JEN = 0.968
    From SANDWICH to:    RIDE = 0.968    CAR = 0.968

From Ride to Sandwich:
  Groups:
  Props:
    From P1 (IC = 0.621) to:    P1 = 0.990
    From P2 (IC = 0.621) to:    P2 = 0.982
    From P3 (IC = 0.621) to:    P3 = 0.990
    From 'P3' (IC = 0.247) to:    P4 = 0.993
  SPs:
    From SP1.1 to:    SP1.1 = 0.993
    From SP1.2 to:    SP1.2 = 0.993
    From SP2.1 to:    SP2.1 = 0.993
    From SP2.2 to:    SP2.2 = 0.993
    From SP3.1 to:    SP3.1 = 0.993
    From SP3.2 to:    SP3.2 = 0.992
    From 'SP6' to:    SP4.1 = 0.992
    From 'SP7' to:    SP4.2 = 0.992
    From 'SP8' to:    SP4.3 = 0.992
  Preds:
    From WANT1 to:    WANT1 = 0.968
    From WANT2 to:    WANT2 = 0.968
    From KNOW1 to:    KNOW1 = 0.968
    From KNOW2 to:    KNOW2 = 0.968
    From HAVE1 to:    HAVE1 = 0.968
    From HAVE2 to:    HAVE2 = 0.968
    From 'ASK1' to:    ASK1 = 0.968
    From 'ASK2' to:    ASK2 = 0.968
    From 'ASK3' to:    ASK3 = 0.968
  Objs:
    From BOB to:    JILL = 0.970
    From JEN to:    SAM = 0.968
    From RIDE to:    SANDWICH = 0.968
    From CAR to:    SANDWICH = 0.968



* * * * * * * * * * * * * * * *
* * * * Inferred Units  * * * *
* * * * * * * * * * * * * * * *

* * * * * Analog Ride * * * * *

Groups:

Props:
'P3':  [ 'ASK1' + BOB ] [ 'ASK2' + JEN ] [ 'ASK3' + RIDE ] 

Preds:
'ASK1':
   ORGANISM(1.000)
   PERSON(1.000)
   SOUL(1.000)
   LIVING_THING(1.000)
   BEING(1.000)
   MORTAL(1.000)
   INDIVIDUAL(1.000)
   SOMEONE(1.000)
   SOMEBODY(1.000)
   ANIMATE_THING(1.000)
   QUESTIONER(1.000)
   ARTICULATOR(1.000)
   QUERIER(1.000)
   COMMUNICATOR(1.000)
   UTTERER(1.000)
   TALKER(1.000)
   INQUIRER(1.000)
   SPEAKER(1.000)
   VERBALISER(1.000)
   ASKER(1.000)
   VERBALIZER(1.000)
   ENQUIRER(1.000)

'ASK2':
          NEED(0.333)
          REQUIRE(0.333)
   CONVEY10(1.000)
   PASS1(1.000)
   PUT_ACROSS(1.000)
   PASS_ON(1.000)
   COMMUNICATE1(1.000)
   TRANSFER1(1.000)
   DISPLACE2(1.000)
   TRANSMIT10(1.000)
   MOVE1(1.000)
   REQUEST1(1.000)
   COMMUNICATE10(1.000)
   BESPEAK(1.000)
   QUEST1(1.000)
   DEMAND(1.000)
   CALL_FOR4(1.000)
   PASS_ALONG(1.000)
          STATIVE(0.333)
   ACT(1.000)
          COMMUNICATION(0.333)
          TAKE(0.333)
   INTERACT(1.000)
   MOVE(1.000)
          LEAVE2(0.333)
   INTERCOMMUNICATE(1.000)
          ASK9(0.333)
          GIVE9(0.333)
          CALL_FOR(0.333)
          NECESSITATE(0.333)
          IMPART(0.333)
          INVOLVE7(0.333)
          INQUIRE1(0.333)
          TELL(0.333)
          FORMULATE(0.333)
          SHOW2(0.333)
          CONVEY(0.333)
          PHRASE(0.333)
          GIVE_VOICE(0.333)
          EXPECT(0.333)
          ASK(0.333)
          REQUIRE1(0.333)
          POSTULATE(0.333)
          ADDRESS(0.333)
   COMMUNICATE(1.000)
          INFORM(0.333)
          ARTICULATE2(0.333)
          ENQUIRE(0.333)
          EXPRESS1(0.333)
          EVINCE(0.333)
          PASS_ON3(0.333)
          WORD(0.333)
          ASK1(0.333)
          ASK2(0.333)
          ASK4(0.333)
          TURN_TO1(0.333)
          ASK5(0.333)

'ASK3':
   ASK_ROLE_3(1.000)
   OBJECT(1.000)


Objs:
