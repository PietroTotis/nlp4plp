% M677: Two cards are selected at random from a standard deck of 52 playing cards.  Find the probability that two hearts are selected if the cards are drawn in sequence, with the first card being replaced and the deck reshuffled prior to the second drawing. ## Solution= 0.0625

group(1-10).
size(1-10, 52).

given(exactly(13, 1-10, hearts)).

take_wr(1-10, 1-2, 2).

probability(all(1-2, hearts)).

property(suit, [hearts]).

