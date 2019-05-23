% L241: A man is dealt four spade cards from an ordinary deck of 52 playing cards, from which 13 are spades, and then dealt three additional cards.  Find the probability p that at least one of the additional cards is also a spade. ## Solution= 8157/17296

group(1-11).
size(1-11, 52).

group(rest(1-7)).

given(exactly(13, 1-11, spade)).

take(rest(1-7), 1-28, 3).
take(1-11, 1-7, 4).
observe(all(1-7, spade)).

probability(atleast(1, 1-28, spade)).

property(property, [spade]).

