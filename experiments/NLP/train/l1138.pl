% L1138: You and four friends are in line at lunch and are each selecting a piece of fruit to eat.  If there are 5 types of fruit available, what is the probability that you each select a different type? ## Solution= 0.0384

group(2-7).
size(2-7, 5).

given(exactly(1, 2-7, v(2-7,3))).
given(exactly(1, 2-7, v(2-7,4))).
given(exactly(1, 2-7, v(2-7,0))).
given(exactly(1, 2-7, v(2-7,1))).
given(exactly(1, 2-7, v(2-7,2))).

take_wr(2-7, 2-17, 5).


probability(all_diff(2-17,outcome(0))).

property(outcome(0), [v(2-7,3), v(2-7,0), v(2-7,1), v(2-7,4), v(2-7,2)]).

