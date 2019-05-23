% H91: A student is applying to Harvard and Dartmouth.  He estimates that he has a probability of .5 of being accepted at Dartmouth and .3 of being accepted at Harvard.  He further estimates the probability that he will be accepted by both is .2.  What is the probability that he is accepted by Dartmouth if he is accepted by Harvard? ## Solution= 2/3

group(1-2).

given(exactly(rel(.5, 1-2), 1-2, dartmouth)).
given(exactly(rel(.3, 1-2), 1-2, harvard)).
given(exactly(rel(.2, 1-2), 1-2, and(dartmouth, harvard))).

take(1-2, 4-6, 1).
observe(all(4-6, harvard)).

probability(all(4-6, dartmouth)).

property(dartmouth, [dartmouth]).
property(harvard, [harvard]).

