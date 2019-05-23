% L371: An experiment has three outcomes, -5, 3 and 8, and they are all equally likely to occur.  When the experiment is carried out multiple times, the outcome of any particular trial has no effect on the outcome of any other trial.  Find the probability that, in three consecutive trials of the experiment, the product of the three outcomes is negative. ## Solution= 13/27

group(3-9).
size(3-9, 3).

given(exactly(1, 3-9, -5)).
given(exactly(1, 3-9, 8)).
given(exactly(1, 3-9, 3)).

take_wr(3-9, 3-12, 3).


probability(aggcmp(3-12,outcome(0),product,<,0)).

property(outcome(0), [-5, 8, 3]).

