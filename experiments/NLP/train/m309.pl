% M309: A card is drawn from a standard deck of 52 cards.  A standard deck contains 13 heart cards.  What is the probability that a heart is drawn? ## Solution= 0.25

group(1-8).
size(1-8, 52).

given(exactly(13, 1-8, heart)).

take(1-8, 1-2, 1).

probability(all(1-2, heart)).

property(suit, [heart]).

