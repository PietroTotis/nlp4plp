% M497: You roll a 6-sided die.  What is the probability that 2 will not appear on the die? ## Solution= 5/6

group(1-5).
size(1-5, 6).

given(exactly(1, 1-5, v(1-5,4))).
given(exactly(1, 1-5, 2)).
given(exactly(1, 1-5, v(1-5,3))).
given(exactly(1, 1-5, v(1-5,0))).
given(exactly(1, 1-5, v(1-5,2))).
given(exactly(1, 1-5, v(1-5,1))).

take_wr(1-5, 1-2, 1).


probability(all(1-2, not(2))).

property(outcome(0), [v(1-5,2), v(1-5,4), 2, v(1-5,1), v(1-5,0), v(1-5,3)]).

