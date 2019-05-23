% L288: Cards are to be dealt one after the other from a pack of 52 playing cards.  The pack contains 13 diamonds.  Calculate the probability that the third card will be the first diamond. ## Solution= 247/1700

group(1-12).
size(1-12, 52).

given(exactly(13, 1-12, diamond)).

take(1-12, 3-11, 3).

probability(and(and(nth(1, 3-11, not(diamond)), nth(2, 3-11, not(diamond))), nth(3, 3-11, diamond))).

property(property, [diamond]).

