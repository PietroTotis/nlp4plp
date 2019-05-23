% M517: You roll four 6-sided dice.  What is the probability that 3 will not appear? ## Solution= 0.482253086419753

group(1-5).
size(1-5, 6).

given(exactly(1, 1-5, v(1-5,4))).
given(exactly(1, 1-5, v(1-5,3))).
given(exactly(1, 1-5, v(1-5,0))).
given(exactly(1, 1-5, 3)).
given(exactly(1, 1-5, v(1-5,2))).
given(exactly(1, 1-5, v(1-5,1))).

take_wr(1-5, 1-2, 4).


probability(all(1-2, not(3))).

property(outcome(0), [v(1-5,2), v(1-5,4), 3, v(1-5,1), v(1-5,0), v(1-5,3)]).

