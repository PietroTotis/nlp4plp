% M464: A six-sided die is rolled.  Find the probability of not getting a 5. ## Solution= 5/6

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, v(1-3,3))).
given(exactly(1, 1-3, v(1-3,2))).
given(exactly(1, 1-3, v(1-3,1))).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, v(1-3,4))).
given(exactly(1, 1-3, v(1-3,0))).

take_wr(1-3, 1-5, 1).


probability(all(1-5, not(5))).

property(outcome(0), [v(1-3,4), v(1-3,3), v(1-3,2), v(1-3,1), v(1-3,0), 5]).

