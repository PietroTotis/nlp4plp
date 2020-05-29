% L704: If 3 letters of the alphabet are selected at random, find the probability of getting at least one letter x. Letters can be used more than once. ## Solution= 1-(25/26)^3

group(1-3).
size(1-3, 26).

given(exactly(1, 1-3, v(1-3,20))).
given(exactly(1, 1-3, x)).
given(exactly(1, 1-3, v(1-3,4))).
given(exactly(1, 1-3, v(1-3,10))).
given(exactly(1, 1-3, v(1-3,19))).
given(exactly(1, 1-3, v(1-3,2))).
given(exactly(1, 1-3, v(1-3,11))).
given(exactly(1, 1-3, v(1-3,18))).
given(exactly(1, 1-3, v(1-3,16))).
given(exactly(1, 1-3, v(1-3,7))).
given(exactly(1, 1-3, v(1-3,5))).
given(exactly(1, 1-3, v(1-3,15))).
given(exactly(1, 1-3, v(1-3,13))).
given(exactly(1, 1-3, v(1-3,23))).
given(exactly(1, 1-3, v(1-3,6))).
given(exactly(1, 1-3, v(1-3,12))).
given(exactly(1, 1-3, v(1-3,14))).
given(exactly(1, 1-3, v(1-3,24))).
given(exactly(1, 1-3, v(1-3,3))).
given(exactly(1, 1-3, v(1-3,9))).
given(exactly(1, 1-3, v(1-3,21))).
given(exactly(1, 1-3, v(1-3,22))).
given(exactly(1, 1-3, v(1-3,1))).
given(exactly(1, 1-3, v(1-3,17))).
given(exactly(1, 1-3, v(1-3,8))).
given(exactly(1, 1-3, v(1-3,0))).

take_wr(1-3, 1-8, 3).


probability(atleast(1, 1-8, x)).

property(outcome(0), [v(1-3,4), v(1-3,2), v(1-3,0), v(1-3,19), v(1-3,23), v(1-3,20), v(1-3,12), v(1-3,10), v(1-3,8), v(1-3,16), v(1-3,6), v(1-3,3), v(1-3,1), v(1-3,18), x, v(1-3,24), v(1-3,14), v(1-3,22), v(1-3,21), v(1-3,13), v(1-3,11), v(1-3,9), v(1-3,17), v(1-3,7), v(1-3,15), v(1-3,5)]).

