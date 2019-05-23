% H668: A package of eight light bulbs contains three defective bulbs.  If two bulbs are randomly selected for use, find the probability that neither one is defective. ## Solution= 0.357142857142857

group(1-2).
size(1-2, 8).

given(exactly(3, 1-2, defective)).

take(1-2, 2-3, 2).

probability(none(2-3, defective)).

property(property, [defective]).

