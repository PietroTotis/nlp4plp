% L426: A box contains 20 electric bulbs, out of which 4 are defective.  Two bulbs are chosen at random from this box.  What is the probability that at least one these is defective? ## Solution= 7/19

group(1-2).
size(1-2, 20).

given(exactly(4, 1-2, defective)).

take(1-2, 2-2, 2).

probability(atleast(1, 2-2, defective)).

property(property, [defective]).

