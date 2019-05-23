% L775: A bag contains 3 red, 6 white and 7 blue balls.  What is the probability that two balls drawn are white and blue? ## Solution= 7/20

group(1-2).

given(exactly(7, 1-2, blue)).
given(exactly(6, 1-2, white)).
given(exactly(3, 1-2, red)).

take(1-2, 2-7, 2).

probability(and(exactly(1, 2-7, white), exactly(1, 2-7, blue))).

property(property, [blue, white, red]).

