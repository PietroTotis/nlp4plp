% M496: A student is applying to Harvard and Dartmouth.  He estimates that he has a probability of .5 of being accepted at Dartmouth and .3 of being accepted at Harvard.  He further estimates the probability that he will be accepted by both is .2.  What is the probability that he is accepted by Dartmouth if he is accepted by Harvard? ## Solution= 0.66666667

group(probabilities).

given(exactly(rel(.5, probabilities), probabilities, dartmouth)).
given(exactly(rel(.3, probabilities), probabilities, harvard)).
given(exactly(rel(.2, probabilities), probabilities, and(dartmouth, harvard))).

take(probabilities, 4-4, 1).
observe(all(4-4, harvard)).

probability(all(4-4, dartmouth)).

property(dartmouth, [dartmouth]).
property(harvard, [harvard]).

