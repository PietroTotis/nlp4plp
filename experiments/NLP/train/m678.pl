% M678: Two cards are selected at random from a standard deck of 52 playing cards.  Find the probability that two hearts are selected if the two cards are drawn consecutively, without replacement. ## Solution= 0.0588235294117647

group(1-10).
size(1-10, 52).

given(exactly(13, 1-10, hearts)).

take(1-10, 1-2, 2).

probability(all(1-2, hearts)).

property(suit, [hearts]).

