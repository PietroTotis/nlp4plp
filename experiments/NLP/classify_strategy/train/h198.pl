% H198: What is the probability of choosing a king from a standard deck of playing cards?  There are 4 kings. ## Solution= 4/52

group(1-12).
size(1-12, 52).

given(exactly(4, 1-12, king)).

take(1-12, 1-8, 1).

probability(all(1-8, king)).

property(property, [king]).

