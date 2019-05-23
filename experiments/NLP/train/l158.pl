% L158: A lift starts with 7 passengers and it stops at 10 storeys.  Find the probability that the passengers get off the lift at 7 different storeys.  We assume that each passenger has the probability 1/10 to get off at any given storey and that the storeys at which each passenger are independent of each other. ## Solution= 0.06048

group(1-2).
size(1-2, 10).

given(exactly(1, 1-2, v(1-2,9))).
given(exactly(1, 1-2, v(1-2,5))).
given(exactly(1, 1-2, v(1-2,1))).
given(exactly(1, 1-2, v(1-2,6))).
given(exactly(1, 1-2, v(1-2,2))).
given(exactly(1, 1-2, v(1-2,3))).
given(exactly(1, 1-2, v(1-2,8))).
given(exactly(1, 1-2, v(1-2,4))).
given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, v(1-2,7))).

take_wr(1-2, 2-8, 7).


probability(all_diff(2-8,outcome(0))).

property(outcome(0), [v(1-2,8), v(1-2,9), v(1-2,6), v(1-2,7), v(1-2,4), v(1-2,5), v(1-2,2), v(1-2,3), v(1-2,0), v(1-2,1)]).

