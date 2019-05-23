% M738: A six-sided die is rolled twice.  What is the probability of showing a one on both rolls? ## Solution= 1/36

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, v(1-3,3))).
given(exactly(1, 1-3, v(1-3,2))).
given(exactly(1, 1-3, v(1-3,1))).
given(exactly(1, 1-3, one)).
given(exactly(1, 1-3, v(1-3,4))).
given(exactly(1, 1-3, v(1-3,0))).

take_wr(1-3, 1-5, 2).


probability(all(1-5, one)).

property(outcome(0), [v(1-3,4), v(1-3,3), v(1-3,2), v(1-3,1), v(1-3,0), one]).

