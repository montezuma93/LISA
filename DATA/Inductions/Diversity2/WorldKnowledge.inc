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
