Analog WorldKnowledge2
  DefPreds
    has 2 state possess has1 has2 ;
    can [ state1 has-ability able1 can1 ] [ state2 is-ability able2 can2 ] ;
    eat [ has-ability consume1 destroy1 eat1 ] [ is-ability consume2 destroy2 eat2 ] ;
    isa [ isa1 exemplar ] [ isa2 category ] ;
  end
  DefObjs
    animal animal ;
    artifact artifact ;
    bird bird ;
    robin robin ;
    lung lung ;
    b-wing b-wing ;
    b-foot b-foot ;
    a-wing a-wing ;
    car car ;
    wheel wheel ;
    fly fly ;
    drive drive ;
    lamb lamb ;
    monkey monkey ;
    grass grass  ;
    flower flower ; 
    tree tree ;
    plant plant ;
    parrot parrot ;
    penguin penguin ;
    canary canary ;
    brick brick ;
  end
  DefProps
    P1 has ( animal lung ) ;
    P3 can ( bird fly ) ;
    P4 has ( car wheel ) ;
    P5 has ( bird b-wing ) ;
    P6 can ( car drive ) ;
    P7 has ( bird b-foot ) ;
    P9 eat ( lamb plant ) ;
    P10 isa ( bird animal ) ;
    P11 isa ( canary bird ) ;
    P12 isa ( parrot bird ) ;
    P13 isa ( tree plant ) ;
    P14 isa ( brick artifact ) ;
  end
  DefGroups
    Birds
      Props: P3 P5 P7 P10 P11 P12 %
      Semantics: Generic %  { a new "generic" group 10/2/08
      %%
    Cars
      Props: P4 P6 %
      Semantics: Generic %  { a new "generic" group 10/2/08
      %%
    Animals
      Props: P1 %
      Semantics: Generic %  { a new "generic" group 10/2/08
      %%
  end
done { world knowledge
