% M835: In a sample of 1000 people, 120 are left - handed.  Two unrelated people are selected at random without replacement.  Find the probability that neither person is left - handed. ## Solution= 0.774294294294294

group(1-6).
size(1-6, 1000).

given(exactly(120, 1-6, left)).

take(1-6, 2-3, 2).

probability(none(2-3, left)).

property(hand, [left]).

