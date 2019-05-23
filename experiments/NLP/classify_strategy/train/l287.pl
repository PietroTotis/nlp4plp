% L287: Cards are to be dealt one after the other from a pack of 52 playing cards.  The pack contains 13 diamonds.  Calculate the probability that the first two cards dealt will both be diamonds. ## Solution= 1/17

group(1-12).
size(1-12, 52).

given(exactly(13, 1-12, diamond)).

take(1-12, 3-8, 2).

probability(all(3-8, diamond)).

property(property, [diamond]).

