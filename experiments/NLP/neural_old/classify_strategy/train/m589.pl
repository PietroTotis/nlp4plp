% M589: Patrick is a magician who specializes in card tricks.  He offers the deck to a member of the audience, who picks out 4 cards at random from the standard deck.  A standard deck contains 13 cards in each suit: hearts, clubs, diamonds and spades.  What is the probability that the audience member picks 4 cards from the suit of clubs? ## Solution= 0.00264105642256903

group(2-22).
size(2-22, 52).

given(exactly(13, 2-22, club)).

take(2-22, 2-16, 4).

probability(all(2-16, club)).

property(suit, [club]).

