% H77: A die is rolled 30 times.  What is the probability that a 6 turns up exactly 5 times? ## Solution= .1921

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, v(1-2,1))).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, v(1-2,2))).
given(exactly(1, 1-2, v(1-2,3))).
given(exactly(1, 1-2, v(1-2,4))).
given(exactly(1, 1-2, v(1-2,0))).

take_wr(1-2, 1-4, 30).


probability(exactly(5, 1-4, 6)).

property(outcome(0), [v(1-2,4), v(1-2,2), v(1-2,3), 6, v(1-2,0), v(1-2,1)]).

