% L1133: You and four of your friends go to the same store at different times to buy costumes for a costume party.  There are 20 different costumes at the store, and the store has at least five duplicates of each costume.  Find the probability that all five of you choose different costumes. ## Solution= 0.5814

group(3-11).
size(3-11, 20).

given(exactly(1, 3-11, v(3-11,12))).
given(exactly(1, 3-11, v(3-11,9))).
given(exactly(1, 3-11, v(3-11,3))).
given(exactly(1, 3-11, v(3-11,8))).
given(exactly(1, 3-11, v(3-11,7))).
given(exactly(1, 3-11, v(3-11,14))).
given(exactly(1, 3-11, v(3-11,1))).
given(exactly(1, 3-11, v(3-11,16))).
given(exactly(1, 3-11, v(3-11,6))).
given(exactly(1, 3-11, v(3-11,5))).
given(exactly(1, 3-11, v(3-11,0))).
given(exactly(1, 3-11, v(3-11,19))).
given(exactly(1, 3-11, v(3-11,4))).
given(exactly(1, 3-11, v(3-11,18))).
given(exactly(1, 3-11, v(3-11,10))).
given(exactly(1, 3-11, v(3-11,13))).
given(exactly(1, 3-11, v(3-11,11))).
given(exactly(1, 3-11, v(3-11,2))).
given(exactly(1, 3-11, v(3-11,17))).
given(exactly(1, 3-11, v(3-11,15))).

take_wr(3-11, 3-9, 5).


probability(all_diff(3-9,outcome(0))).

property(outcome(0), [v(3-11,16), v(3-11,13), v(3-11,18), v(3-11,0), v(3-11,17), v(3-11,1), v(3-11,11), v(3-11,2), v(3-11,8), v(3-11,3), v(3-11,10), v(3-11,9), v(3-11,4), v(3-11,19), v(3-11,5), v(3-11,15), v(3-11,6), v(3-11,7), v(3-11,14), v(3-11,12)]).

