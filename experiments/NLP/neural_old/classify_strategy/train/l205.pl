% L205: Peter and Paul both have 24 photos from their holidays.  Suddenly the wind blows them all away.  After an extensive search, they manage to find a total of 40 photos back.  What is the probability that Peter 's photos have all been found? ## Solution= ?

group(1-7).

given(exactly(24, 1-7, peter)).
given(exactly(24, 1-7, paul)).

take(1-7, 3-14, 40).

probability(exactly(24, 3-14, peter)).

property(property, [paul, peter]).

