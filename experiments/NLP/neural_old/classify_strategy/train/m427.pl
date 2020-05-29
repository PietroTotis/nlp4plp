% M427: What is the probability of a die showing a 2 or a 5? ## Solution= 1/3

group(1-7).
size(1-7, 6).

given(exactly(1, 1-7, 2)).
given(exactly(1, 1-7, v(1-7,1))).
given(exactly(1, 1-7, v(1-7,2))).
given(exactly(1, 1-7, 5)).
given(exactly(1, 1-7, v(1-7,0))).
given(exactly(1, 1-7, v(1-7,3))).

take_wr(1-7, 1-8, 1).


probability(all(1-8, or(2, 5))).

property(outcome(0), [v(1-7,0), 2, 5, v(1-7,3), v(1-7,2), v(1-7,1)]).

