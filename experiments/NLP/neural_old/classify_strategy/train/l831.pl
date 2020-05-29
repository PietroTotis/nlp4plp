% L831: A card from a pack of 52 cards is lost.  The pack contains 13 diamonds.  From the remaining cards of the pack, two cards are drawn and are found to be both diamonds.  Find the probability of the lost card being a diamond. ## Solution= 11/50

group(rest(1-2)).

group(1-5).
size(1-5, 52).

given(exactly(13, 1-5, diamond)).

take(rest(1-2), 3-10, 2).
observe(all(3-10, diamond)).
take(1-5, 1-2, 1).

probability(all(1-2, diamond)).

property(property, [diamond]).

