% M836: In a sample of 1000 people, 120 are left - handed.  Two unrelated people are selected at random without replacement.  Find the probability that at least one of the two people is left - handed. ## Solution= 0.225705705705706

group(1-6).
size(1-6, 1000).

given(exactly(120, 1-6, left)).

take(1-6, 2-3, 2).

probability(atleast(1, 2-3, left)).

property(hand, [left]).

