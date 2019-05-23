% M516: There are 19 marbles in a bag and 12 of them are purple.  If you choose a marble at random, what is the probability that it will not be purple? ## Solution= 7/19

group(1-4).
size(1-4, 19).

given(exactly(12, 1-4, purple)).

take(1-4, 2-5, 1).

probability(none(2-5, purple)).

property(colour, [purple]).

