% L813: A bag contains 7 white, 5 black and 8 red balls.  Four balls are drawn without replacement.  Find the probability that all the balls are black. ## Solution= 1/969

group(1-2).

given(exactly(7, 1-2, white)).
given(exactly(5, 1-2, black)).
given(exactly(8, 1-2, red)).

take(1-2, 2-2, 4).

probability(all(2-2, black)).

property(property, [white, black, red]).

