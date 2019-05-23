% H561: Five cards are selected without replacement from a pack of 52 playing cards, containing 13 hearts.  What is the probability of exactly 3 hearts? ## Solution= 2717/33320

group(1-9).
size(1-9, 52).

given(exactly(13, 1-9, hearts)).

take(1-9, 1-2, 5).

probability(exactly(3, 1-2, hearts)).

property(property, [hearts]).

