% L792: Two cards are drawn at random from a well-shuffled deck of 52 cards, containing 26 black and 26 red cards, with replacement.  What is the probability that both the cards are either black or red? ## Solution= 1/2

group(1-10).
size(1-10, 52).

given(exactly(26, 1-10, red)).
given(exactly(26, 1-10, black)).

take_wr(1-10, 1-2, 2).

probability(or(all(1-2, black), all(1-2, red))).

property(property, [black, red]).

