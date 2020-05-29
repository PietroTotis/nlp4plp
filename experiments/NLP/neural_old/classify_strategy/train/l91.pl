% L91: Two cards are drawn from the top of a well-shuffled deck of 52 cards with 2 black aces.  What is the probability that they are both black aces? ## Solution= 1/1326

group(1-11).
size(1-11, 52).

given(exactly(2, 1-11, ace)).

take(1-11, 1-2, 2).

probability(all(1-2, ace)).

property(property, [ace]).

