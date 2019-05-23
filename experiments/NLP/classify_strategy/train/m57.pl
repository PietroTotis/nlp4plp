% M57: In a deck of 52 cards there are 13 hearts.  If a five card hand is dealt, what is the probability that the hand contains at least one heart? ## Solution= 0.7784663866

group(1-3).
size(1-3, 52).

given(exactly(13, 1-3, hearts)).

take(1-3, 2-5, 5).

probability(atleast(1, 2-5, hearts)).

property(suit, [hearts]).

