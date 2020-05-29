% H644: A box contains 24 light bulbs, of which 4 are defective.  A person selects 4 bulbs, without replacement.  What is the probability that all 4 selected bulbs are defective? ## Solution= .0000941

group(1-2).
size(1-2, 24).

given(exactly(4, 1-2, defective)).

take(1-2, 2-5, 4).

probability(all(2-5, defective)).

property(property, [defective]).

