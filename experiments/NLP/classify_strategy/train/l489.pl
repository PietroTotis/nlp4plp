% L489: A group of five people simultaneously enter an elevator at the ground floor.  There are 10 upper floors.  The persons choose their exit floors independently of each other.  Determine the probability that they are all going to different floors when each person randomly chooses one of the 10 floors as the exit floor. ## Solution= 189/625

group(1-5).
size(1-5, 10).

given(exactly(1, 1-5, v(1-5,5))).
given(exactly(1, 1-5, v(1-5,4))).
given(exactly(1, 1-5, v(1-5,8))).
given(exactly(1, 1-5, v(1-5,3))).
given(exactly(1, 1-5, v(1-5,7))).
given(exactly(1, 1-5, v(1-5,0))).
given(exactly(1, 1-5, v(1-5,9))).
given(exactly(1, 1-5, v(1-5,2))).
given(exactly(1, 1-5, v(1-5,6))).
given(exactly(1, 1-5, v(1-5,1))).

take_wr(1-5, 1-7, 5).


probability(all_diff(1-7,outcome(0))).

property(outcome(0), [v(1-5,2), v(1-5,9), v(1-5,8), v(1-5,5), v(1-5,4), v(1-5,7), v(1-5,6), v(1-5,1), v(1-5,0), v(1-5,3)]).

