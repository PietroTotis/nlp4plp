% H197: A box of 200 printer cartridges is used to stock the shelves.  20 of the cartridges are defective.  A customer buys 10 cartridges from the 200.  What is the probability that all the ones he bought are good? ## Solution= 0.33977438

group(1-2).
size(1-2, 200).

given(exactly(20, 1-2, defective)).

take(1-2, 3-5, 10).

probability(none(3-5, defective)).

property(status, [defective]).

