Note: Semantic/test1.sym
Note: First attempt to fuck with semantic relations and detect contradictions

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 2 runs of semantic/test1
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
Run 1 of semantic/test1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:ToVerify    Recip : WorldKnowledge    Fire control:props    Goals: NORMAL     Phase set: P1

Contradiction detected underTHING.  Active members are: LIVING, NON-LIVING
Simulation iteration (i.e., total RT) =250


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 2 of semantic/test1
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:ToVerify    Recip : WorldKnowledge    Fire control:props    Goals: NORMAL     Phase set: P1

Contradiction detected underTHING.  Active members are: LIVING, NON-LIVING
Simulation iteration (i.e., total RT) =251

Note: Semantic/test2.sym
Note: First attempt to fuck with semantic relations and detect contradictions
Note: Has bird lungs?  (it ougta not detect a contradiction here)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 2 runs of semantic/test2
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
Run 1 of semantic/test2
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:ToVerify    Recip : WorldKnowledge    Fire control:props    Goals: NORMAL     Phase set: P1

Truth verified! (I.e., Lack-of-anomaly detected)
The assertion HAS (BIRD, LUNGS) matches prop P5: HAS (BIRD, B-WINGS)
Iteration (RT) = 492


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 2 of semantic/test2
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:ToVerify    Recip : WorldKnowledge    Fire control:props    Goals: NORMAL     Phase set: P1

Truth verified! (I.e., Lack-of-anomaly detected)
The assertion HAS (BIRD, LUNGS) matches prop P1: HAS (ANIMAL, LUNGS)
Iteration (RT) = 494

Note: Semantic/test3.sym
Note: tell it lambs eat plants
Note: eats lamb monkey ?  (it ougta to detect an anamoly here)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 2 runs of semantic/test3
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
Run 1 of semantic/test3
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:ToVerify    Recip : WorldKnowledge    Fire control:props    Goals: NORMAL     Phase set: P1

Contradiction detected underLIVING.  Active members are: ANIMAL, PLANT
Simulation iteration (i.e., total RT) =386


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 2 of semantic/test3
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:ToVerify    Recip : WorldKnowledge    Fire control:props    Goals: NORMAL     Phase set: P1

Contradiction detected underLIVING.  Active members are: ANIMAL, PLANT
Simulation iteration (i.e., total RT) =277

Note: Semantic/test4.sym
Note: tell it lambs eat grass
Note: eats lamb flowers ?  (it ougta detect a contradiction here)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 2 runs of semantic/test4
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
Run 1 of semantic/test4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:ToVerify    Recip : WorldKnowledge    Fire control:props    Goals: NORMAL     Phase set: P1

Contradiction detected underPLANT.  Active members are: GRASS, FLOWER
Simulation iteration (i.e., total RT) =364


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 2 of semantic/test4
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:ToVerify    Recip : WorldKnowledge    Fire control:props    Goals: NORMAL     Phase set: P1

Contradiction detected underPLANT.  Active members are: GRASS, FLOWER
Simulation iteration (i.e., total RT) =254

Note: Semantic/test5.sym
Note: Tell it: eat lamb plants; ask eats lamb flowers ?  (it ougta not detect a contradiction here)

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 2 runs of semantic/test5
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
Run 1 of semantic/test5
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:ToVerify    Recip : WorldKnowledge    Fire control:props    Goals: NORMAL     Phase set: P1

Truth verified! (I.e., Lack-of-anomaly detected)
The assertion EAT (LAMB, FLOWER) matches prop P9: EAT (LAMB, PLANT)
Iteration (RT) = 429


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 2 of semantic/test5
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:ToVerify    Recip : WorldKnowledge    Fire control:props    Goals: NORMAL     Phase set: P1

Truth verified! (I.e., Lack-of-anomaly detected)
The assertion EAT (LAMB, FLOWER) matches prop P9: EAT (LAMB, PLANT)
Iteration (RT) = 487

Note: Semantic/test6.sym
Note: assert that a bird is a monkey

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 2 runs of semantic/test6
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
Run 1 of semantic/test6
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:ToVerify    Recip : WorldKnowledge    Fire control:props    Goals: NORMAL     Phase set: P1

Contradiction detected underANIMAL.  Active members are: MAMMAL, BIRD
Simulation iteration (i.e., total RT) =24


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 2 of semantic/test6
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:ToVerify    Recip : WorldKnowledge    Fire control:props    Goals: NORMAL     Phase set: P1

Contradiction detected underANIMAL.  Active members are: MAMMAL, BIRD
Simulation iteration (i.e., total RT) =24

Note: Semantic/test7.sym
Note: a different way to assert that a bird is a monkey

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 2 runs of semantic/test7
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
Run 1 of semantic/test7
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:ToVerify    Recip : WorldKnowledge    Fire control:props    Goals: NORMAL     Phase set: P1

Truth verified! (I.e., Lack-of-anomaly detected)
The assertion ISA (BIRD, MONKEY) matches prop P1: HAS (ANIMAL, LUNGS)
Iteration (RT) = 498


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 2 of semantic/test7
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:ToVerify    Recip : WorldKnowledge    Fire control:props    Goals: NORMAL     Phase set: P1

Truth verified! (I.e., Lack-of-anomaly detected)
The assertion ISA (BIRD, MONKEY) matches prop P1: HAS (ANIMAL, LUNGS)
Iteration (RT) = 517

Note: Semantic/test8.sym
Note: assert that a bird is an animal

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 2 runs of semantic/test8
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
Run 1 of semantic/test8
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:ToVerify    Recip : WorldKnowledge    Fire control:props    Goals: NORMAL     Phase set: P1

Truth verified! (I.e., Lack-of-anomaly detected)
The assertion ANIMAL (BIRD) matches prop P8: ANIMAL (ANIMAL)
Iteration (RT) = 265


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 2 of semantic/test8
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:ToVerify    Recip : WorldKnowledge    Fire control:props    Goals: NORMAL     Phase set: P1

Truth verified! (I.e., Lack-of-anomaly detected)
The assertion ANIMAL (BIRD) matches prop P8: ANIMAL (ANIMAL)
Iteration (RT) = 265

Note: Semantic/test9.sym
Note: assert that a lamb is an animal

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 2 runs of semantic/test9
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
Run 1 of semantic/test9
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:ToVerify    Recip : WorldKnowledge    Fire control:props    Goals: NORMAL     Phase set: P1

Truth verified! (I.e., Lack-of-anomaly detected)
The assertion ANIMAL (LAMB) matches prop P8: ANIMAL (ANIMAL)
Iteration (RT) = 263


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 2 of semantic/test9
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:ToVerify    Recip : WorldKnowledge    Fire control:props    Goals: NORMAL     Phase set: P1

Truth verified! (I.e., Lack-of-anomaly detected)
The assertion ANIMAL (LAMB) matches prop P8: ANIMAL (ANIMAL)
Iteration (RT) = 263

Note: Semantic/test10.sym
Note: assert that a canary is a parrot

* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Batch: 2 runs of semantic/test10
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
Run 1 of semantic/test10
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:ToVerify    Recip : WorldKnowledge    Fire control:props    Goals: NORMAL     Phase set: P1

Contradiction detected underBIRD.  Active members are: CANARY, PARROT
Simulation iteration (i.e., total RT) =21


* * * * * * * * * * * * * * * * * * * * * * * * * * * 
Run 2 of semantic/test10
* * * * * * * * * * * * * * * * * * * * * * * * * * * 

Sequence:
Seq. 0    Driver:ToVerify    Recip : WorldKnowledge    Fire control:props    Goals: NORMAL     Phase set: P1

Contradiction detected underBIRD.  Active members are: CANARY, PARROT
Simulation iteration (i.e., total RT) =21

