% H555: Five cards are drawn from a pack of 52 playing cards, of which 4 are Aces.  What is the probability of drawing at least 3 Aces? ## Solution= 19/10829

group(1-7).
size(1-7, 52).

given(exactly(4, 1-7, ace)).

take(1-7, 1-2, 5).

probability(atleast(3, 1-2, ace)).

property(property, [ace]).

