% L368: An experiment has three outcomes, -5, 3 and 8, and they are all equally likely to occur.  When the experiment is carried out multiple times, the outcome of any particular trial has no effect on the outcome of any other trial.  Find the probability that, in three consecutive trials of the experiment, all three outcomes are 8. ## Solution= 1/27

group(1-5).
size(1-5, 3).

given(exactly(1, 1-5, -5)).
given(exactly(1, 1-5, 8)).
given(exactly(1, 1-5, 3)).

take_wr(1-5, 1-2, 3).


probability(all(1-2, 8)).

property(outcome(0), [-5, 8, 3]).

