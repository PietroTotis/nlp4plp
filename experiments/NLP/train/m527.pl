% M527: You roll two 6 sided dice.  What is the probability that 1 will not appear on the dice? ## Solution= 0.6944444444

group(1-6).
size(1-6, 6).

given(exactly(1, 1-6, 1)).
given(exactly(1, 1-6, v(1-6,2))).
given(exactly(1, 1-6, v(1-6,1))).
given(exactly(1, 1-6, v(1-6,0))).
given(exactly(1, 1-6, v(1-6,4))).
given(exactly(1, 1-6, v(1-6,3))).

take_wr(1-6, 1-3, 2).


probability(all(1-3, not(1))).

property(outcome(0), [v(1-6,1), v(1-6,2), v(1-6,3), v(1-6,0), 1, v(1-6,4)]).

