% H769: A bag contains 3 white cards, 2 black cards, and 5 red cards.  Find the probability of drawing a red card. ## Solution= 5/10

group(1-2).

given(exactly(3, 1-2, white)).
given(exactly(2, 1-2, black)).
given(exactly(5, 1-2, red)).

take(1-2, 2-8, 1).

probability(all(2-8, red)).

property(property, [white, black, red]).

