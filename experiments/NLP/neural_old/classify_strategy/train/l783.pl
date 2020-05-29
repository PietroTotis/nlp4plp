% L783: Three cards are drawn from a well-shuffled pack of 52 cards, containing 4 jacks.  Find the probability that all the three cards are jacks. ## Solution= 1/5525

group(1-8).
size(1-8, 52).

given(exactly(4, 1-8, jacks)).

take(1-8, 1-2, 3).

probability(all(1-2, jacks)).

property(property, [jacks]).

