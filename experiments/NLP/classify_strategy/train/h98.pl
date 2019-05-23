% H98: You are lost in the National Park.  Tourists comprise 2/3 of the visitors to the park, and give a correct answer to requests for directions with probability 3/4.  If you ask a local for directions, the answer is always false.  You ask a passer-by whether the exit from the Park is East or West.  The answer is East.  What is the probability this is correct? ## Solution= 1/2

group(2-6).

given(exactly(rel(1/1, 2-6, local), 2-6, and(false, local))).
given(exactly(rel(2/3, 2-6), 2-6, tourist)).
given(exactly(rel(1/3, 2-6), 2-6, local)).
given(exactly(rel(3/4, 2-6, tourist), 2-6, and(correct, tourist))).

take(2-6, 4-4, 1).

probability(all(4-4, correct)).

property(visitor, [local, tourist]).
property(property, [false, correct]).

