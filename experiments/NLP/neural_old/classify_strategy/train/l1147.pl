% L1147: In a group of 25 factory workers, 20 are low-risk and five are high-risk.  Two of the 25 factory workers are randomly selected without replacement.  Calculate the probability that exactly one of the two selected factory workers is low-risk. ## Solution= 0.33333333

group(1-3).
size(1-3, 25).

given(exactly(5, 1-3, high-risk)).
given(exactly(20, 1-3, low-risk)).

take(1-3, 2-1, 2).

probability(exactly(1, 2-1, low-risk)).

property(property, [high-risk, low-risk]).

