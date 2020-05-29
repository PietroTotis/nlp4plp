% M76: A card is drawn randomly from a deck of 52 cards.  There are 13 spades and 4 aces.  You win $ 10 if the card is a spade or an ace.  What is the probability that you will win the game? ## Solution= 4/13

group(1-11).
size(1-11, 52).

given(exactly(1, 1-11, and(ace, spade))).
given(exactly(4, 1-11, ace)).
given(exactly(13, 1-11, spade)).

take(1-11, 1-2, 1).

probability(all(1-2, or(spade, ace))).

property(colour, [spade]).
property(value, [ace]).

