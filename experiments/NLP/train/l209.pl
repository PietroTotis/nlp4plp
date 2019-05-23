% L209: We draw two cards from a regular deck of 52, from which 13 are spades.  Let S1 be the event `` the first one is a spade, '' and S2 `` the second one is a spade. ''  Compute the probability of S2 given S1. ## Solution= 12/51

group(1-8).
size(1-8, 52).

group(rest(2-2)).

given(exactly(13, 1-8, spade)).

take(1-8, 2-2, 1).
observe(all(2-2, spade)).
take(rest(2-2), 2-16, 1).

probability(all(2-16, spade)).

property(property, [spade]).

