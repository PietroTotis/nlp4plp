% L963: 260 bolts are examined as they are produced.  Five of them are found to be defective.  On the basis of this information, estimate the probability that a bolt will be defective. ## Solution= 5/260

group(1-2).
size(1-2, 260).

given(exactly(5, 1-2, defective)).

take(1-2, 3-13, 1).

probability(all(3-13, defective)).

property(property, [defective]).

