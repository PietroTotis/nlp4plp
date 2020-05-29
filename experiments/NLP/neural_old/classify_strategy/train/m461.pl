% M461: A standard deck of cards has 52 cards.  In a deck, there are 4 aces.  What is the probability of drawing anything but an ace? ## Solution= 12/13

group(1-3).

given(exactly(rel(4/52,1-3), 1-3, ace)).

take_wr(1-3, 3-6, 1).


probability(all(3-6, not(ace))).

property(card_value(0), [ace]).

