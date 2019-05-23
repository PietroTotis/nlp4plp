% L779: A bag contains 3 red, 6 white and 7 blue balls.  What is the probability that two balls drawn at random are both white? ## Solution= 1/8

group(1-2).

given(exactly(7, 1-2, blue)).
given(exactly(6, 1-2, white)).
given(exactly(3, 1-2, red)).

take(1-2, 2-7, 2).

probability(all(2-7, white)).

property(property, [blue, white, red]).

