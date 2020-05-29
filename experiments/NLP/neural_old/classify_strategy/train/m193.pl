% M193: Five people are to be randomly selected for a committee from a class consisting of 10 freshmen and 8 sophomores.  What is the probability that all five of those selected are sophomores? ## Solution= 0.0065359477124183

group(1-13).

given(exactly(8, 1-13, sophomore)).
given(exactly(10, 1-13, freshman)).

take(1-13, 1-2, 5).

probability(all(1-2, sophomore)).

property(property, [freshman, sophomore]).

