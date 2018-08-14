Note: Much more explicit world knowledge than in previous attempts to model similarity and diversity
Note: World knowledge now broken down into many separate schemas, i.e., analogs
Note: This WorldKnowledge file also includes the semantic relations (which used to be  in a separate file)

SemanticRelations:
    thing ( living non-living )
    non-living ( artifact idea number )
    transport ( ground-transport air-transport )
    ground-transport ( feet wheels )
    air-transport ( wings )
    living ( animal plant microbe organ )
    animal ( mammal reptile fish bird insect )
    bird ( sparrow canary parrot chicken finch )
    mammal ( sheep primate rodent cat dog elephant dolphin )
    primate ( monkey chimp gorilla human )
    rodent ( mouse rat hamster bat )
    cat ( persian-cat siamese-cat )
    dog ( poodle greyhound husky retriever )
    pet ( cat dog hamster fish )
    reptile ( snake lizard crocodile )
    plant ( grass tree flower algae )
    artifact ( vehicle building tool furniture machine )
    vehicle ( car boat plane bicycle )
    building ( house office store factory )
    tool ( hammer screw-driver knife wrench )
    furniture ( chair couch bed table )
    bio-part ( organ enzyme )
    organ ( lung heart brain )
done { with semantic relations

Analog BirdSchema
  DefPreds
    bird [ bird animal ] ;
    has 2 state possess has1 has2 ;
    can [ state1 has-ability able1 can1 ] [ state2 is-ability able2 can2 ] ;
    eat [ has-ability consume1 destroy1 eat1 ] [ is-ability consume2 destroy2 eat2 ] ;
    isa [ isa1 exemplar ] [ isa2 category ] ;
    fly [ fly air-transport ] ;
    sing [ sing act communication chirp ] ;
    live-in [ resider live-in1 ] [ residence live-in2 ] ;
  end
  DefObjs
    x x ; { a variable so we can say "bird ( x )" or "isa ( x bird )" and reason about any x we know to be a bird
    bird bird animal ;
    animal animal living ;
    land-animal land-animal animal ;
    wings wings organ fly ;
    beak beak organ eat ;
    feet feet organ stand walk ;
    feathers feathers organ insulation colorful ;
    trees trees plant tall wood ;
    fly fly act transport air-transport ;
    sing sing act communication chirp ;
    seeds seeds nut plant small ;
    insects insect animal small ;
  end
  DefProps
    { isa relations
    P1 bird ( x ) ; { declare that x is a bird
    P2 isa ( x bird ) ; { declare that x is a bird
    P3 isa ( x land-animal ) ;
    P4 isa ( x animal ) ;
    
    { physical description
    P5 has ( x wings ) ;
    P6 has ( x beak ) ;
    P7 has ( x feet ) ;
    P8 has ( x feathers ) ;
    
    { habits
    P9 can ( x fly ) ;
    P10 fly ( x ) ;
    P11 live-in ( x trees ) ;
    P12 eat ( x insects ) ;
    P13 eat ( x seeds ) ;
    P14 can ( x sing ) ;
    P15 sing ( x ) ;
  end
  DefGroups
    Enable ( P5 ) ( P9 ) ;
    Enable ( P9 ) ( P10 ) ;
    Enable ( P10 ) ( P11 ) ;
    Bird { the generic bird group
      Props: P1 ... P15 %
      Semantics: bird %
      %%
  end { groups
done { bird schema

Analog RobinSchema
  DefPreds
    robin [ robin bird ] ;
    bird [ bird animal ] ;
    has 2 state possess has1 has2 ;
    can [ state1 has-ability able1 can1 ] [ state2 is-ability able2 can2 ] ;
    eat [ has-ability consume1 destroy1 eat1 ] [ is-ability consume2 destroy2 eat2 ] ;
    isa [ isa1 exemplar ] [ isa2 category ] ;
    fly [ fly air-transport ] ;
    sing [ sing act communication chirp ] ;
    live-in [ resider live-in1 ] [ residence live-in2 ] ;
  end
  DefObjs
    x x ; { a variable so we can say "bird ( x )" or "isa ( x bird )" and reason about any x we know to be a bird
    bird bird animal ;
    robin robin bird fly sing red-breast ;
    animal animal living ;
    land-animal land-animal animal ;
    wings wings organ fly ;
    beak beak organ eat ;
    feet feet organ stand walk ;
    feathers feathers organ insulation colorful ;
    red-breast feathers breast red ;
    trees trees plant tall wood ;
    fly fly act transport air-transport ;
    sing sing act communication chirp ;
    seeds seeds nut plant small ;
    worms worm animal small ;
  end
  DefProps
    { isa relations
    P1 robin ( x ) ; { declare that x is a robin
    P2 isa ( x robin ) ; { declare that x is a robin
    P3 isa ( x bird ) ; { declare tat x is a robin
    P4 isa ( x land-animal ) ;
    P5 isa ( x animal ) ;
    
    { physical description
    P6 has ( x wings ) ;
    P7 has ( x beak ) ;
    P8 has ( x feet ) ;
    P9 has ( x feathers ) ;
    P10 has ( x red-breast ) ;
    
    { habits
    P11 can ( x fly ) ;
    P12 fly ( x ) ;
    P13 live-in ( x trees ) ;
    P14 eat ( x worms ) ;
    P15 can ( x sing ) ;
    P16 sing ( x ) ;
  end
  DefGroups
    Enable ( P6 ) ( P11 ) ;
    Enable ( P11 ) ( P12 ) ;
    Enable ( P12 ) ( P13 ) ;
    Robin { the generic robin group
      Props: P1 ... P16 %
      Semantics: robin %
      %%
  end { groups
done { robin schema

Analog WorldKnowledge
  DefPreds
    has 2 state possess has1 has2 ;
    can [ state1 has-ability able1 can1 ] [ state2 is-ability able2 can2 ] ;
    eat [ has-ability consume1 destroy1 eat1 ] [ is-ability consume2 destroy2 eat2 ] ;
    isa [ isa1 exemplar ] [ isa2 category ] ;
  end
  DefObjs
    animal animal ;
    land-animal animal land-dwelling ;
    artifact artifact man-made ;
    bird bird fly small sing nest ;
    lung lung organ breathe ;
    b-wings organ biological fly b-wings ;
    b-feet feet organ biological walk b-feet ;
    a-wings artifact man-made fly a-part ;
    car car vehicle expensive small passengers ;
    vehicle vehicle artifact transport ;
    wheels artifact round wheels roll ;
    fly act move air fly ;
    drive act move ground fast drive ;
    lamb lamb baby sheep ;
    monkey monkey live-in-trees ;
    grass grass green ground ;
    flower flower pretty ground ; 
    tree tree green wood high ;
    plant plant green grow will-die natural ;
    parrot parrot colorful talk smart ;
    canary canary yellow small ;
    brick artifact mud hard ;
  end
  DefProps
    P1 has ( animal lung ) ;
    P2 isa ( land-animal animal ) ;
    P3 can ( bird fly ) ;
    P4 has ( car wheels ) ;
    P5 has ( bird b-wings ) ;
    P6 can ( car drive ) ;
    P7 has ( bird b-feet ) ;
    P9 eat ( lamb plant ) ;
    P10 isa ( bird animal ) ;
    P11 isa ( canary bird ) ;
    P12 isa ( parrot bird ) ;
    P13 isa ( tree plant ) ;
    P14 isa ( brick artifact ) ;
    P15 isa ( car vehicle ) ;
    P16 has ( monkey lung ) ;
    P17 isa ( monkey land-animal ) ;
  end
  DefGroups
    Cause ( P2 ) ( P1 ) ; { CE-1: being a (land) animal causes you to have lungs
    Cause ( P15 ) ( P4 ) ; { CE-2: being a (land) vehicle causes a car to have wheels
    Cause ( P17 ) ( P16 ) ; { CE-3: being a land-animal causes monkeys to have lungs
    Enable ( P4 ) ( P6 ) ; { having wheels enables a car to drive
    Birds
      Props: P3 P5 P7 P10 P11 P12 %
      Semantics: Generic %  { a new "generic" group 10/2/08
      %%
    Cars
      Groups: CE-2 %
      Props: P4 P6 %
      Semantics: Generic %  { a new "generic" group 10/2/08
      %%
    Animals
      Groups: CE-1 CE-3 %
      { Props: P1 P10 %
      Semantics: Generic %  { a new "generic" group 10/2/08
      %%
  end
done { world knowledge
