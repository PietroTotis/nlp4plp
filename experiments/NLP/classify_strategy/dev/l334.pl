% L334: We draw at random 13 cards from a full deck of 52 cards.  The deck contains 13 Hearts and 13 Diamonds.  What is the probability that we draw 4 Hearts and 3 Diamonds? ## Solution= 0.074

group(1-10).
size(1-10, 52).

given(exactly(13, 1-10, hearts)).
given(exactly(13, 1-10, diamond)).

take(1-10, 1-6, 13).

probability(and(exactly(4, 1-6, hearts), exactly(3, 1-6, diamond))).

property(property, [hearts, diamond]).

