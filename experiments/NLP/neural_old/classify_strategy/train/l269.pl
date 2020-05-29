% L269: Determine the probability of selecting 1 jazz, 1 country and 1 rap CD in any order from 3 jazz, 2 country and 5 rap CDs, replacing the CDs each time. ## Solution= 9/50

group(1-31).

given(exactly(3, 1-31, jazz)).
given(exactly(2, 1-31, country)).
given(exactly(5, 1-31, rap)).

take_wr(1-31, 1-5, 3).

probability(and(exactly(1, 1-5, jazz), and(exactly(1, 1-5, country), exactly(1, 1-5, rap)))).

property(property, [country, jazz, rap]).

