% L252: A box contains 8 brand A and 12 brand B transistors.  Two transistors are drawn at random and without replacement.  What is the probability that they are both of the same brand? ## Solution= 0.494736842105263

group(1-2).

given(exactly(8, 1-2, a)).
given(exactly(12, 1-2, b)).

take(1-2, 2-2, 2).

probability(all_same(2-2,brand)).

property(brand, [a, b]).

