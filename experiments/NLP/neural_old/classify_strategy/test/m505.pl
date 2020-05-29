% M505: You roll a die numbered from 1 to 6.  What is the probability that you do n't roll a 6? ## Solution= 5/6

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, v(1-4,1))).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, v(1-4,3))).
given(exactly(1, 1-4, v(1-4,0))).
given(exactly(1, 1-4, v(1-4,4))).
given(exactly(1, 1-4, v(1-4,2))).

take_wr(1-4, 1-2, 1).


probability(all(1-2, not(6))).

property(outcome(0), [v(1-4,0), v(1-4,1), v(1-4,2), v(1-4,3), v(1-4,4), 6]).

