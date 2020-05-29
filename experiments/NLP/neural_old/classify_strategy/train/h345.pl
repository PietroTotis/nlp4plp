% H345: From a pack of 52 cards, containing a total of 4 kings, two cards are drawn together at random.  What is the probability of both cards being kings? ## Solution= 1/221

group(1-6).
size(1-6, 52).

given(exactly(4, 1-6, king)).

take(1-6, 1-16, 2).

probability(all(1-16, king)).

property(property, [king]).

