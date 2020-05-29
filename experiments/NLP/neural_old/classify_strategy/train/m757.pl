% M757: Two 6-sided dice are rolled.  The sides are numbered 1, 2, 3, 4, 5 and 6.  Find the probability that the dice show different numbers. ## Solution= 0.833333333333333

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-5, 2).


probability(all_diff(1-5,outcome(0))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

