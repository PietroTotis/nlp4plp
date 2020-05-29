% M891: A box contains 7 balls numbered from 1 to 7.  If a ball is taken at random from the box, find the probability that it is ball number 3. ## Solution= 1/7

group(2-3).
size(2-3, 7).

given(exactly(1, 2-3, v(2-3,0))).
given(exactly(1, 2-3, v(2-3,1))).
given(exactly(1, 2-3, v(2-3,2))).
given(exactly(1, 2-3, v(2-3,5))).
given(exactly(1, 2-3, 3)).
given(exactly(1, 2-3, v(2-3,3))).
given(exactly(1, 2-3, v(2-3,4))).

take_wr(2-3, 2-5, 1).


probability(all(2-5, 3)).

property(outcome(0), [v(2-3,0), v(2-3,1), v(2-3,2), v(2-3,3), 3, v(2-3,4), v(2-3,5)]).

