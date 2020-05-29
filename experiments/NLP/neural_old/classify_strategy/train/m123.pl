% M123: Hiro rolls a fair pair of six-sided dice, each side numbered 1, 2, 3, 4, 5, 6.  What is the probability that the sum of the dice is 8? ## Solution= 5/36

group(1-8).
size(1-8, 6).

given(exactly(1, 1-8, 2)).
given(exactly(1, 1-8, 1)).
given(exactly(1, 1-8, 6)).
given(exactly(1, 1-8, 4)).
given(exactly(1, 1-8, 5)).
given(exactly(1, 1-8, 3)).

take_wr(1-8, 1-2, 2).


probability(aggcmp(1-2,outcome(0),sum,=:=,8)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

