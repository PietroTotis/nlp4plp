% L550: Find the probability of randomly selecting 4 good quarts of milk in succession from a cooler containing 20 quarts of which 5 have spoiled. ## Solution= 91/323

group(1-16).
size(1-16, 20).

given(exactly(5, 1-16, spoil)).

take(1-16, 1-9, 4).

probability(none(1-9, spoil)).

property(property, [spoil]).

