% M888: A single fair die is rolled.  Find the probability of obtaining a number different from both 1 and 2. ## Solution= 2/3

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, v(1-4,1))).
given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, v(1-4,3))).
given(exactly(1, 1-4, v(1-4,0))).
given(exactly(1, 1-4, v(1-4,2))).

take_wr(1-4, 1-6, 1).


probability(all(1-6, and(not(1), not(2)))).

property(outcome(0), [v(1-4,0), v(1-4,1), v(1-4,2), v(1-4,3), 1, 2]).

