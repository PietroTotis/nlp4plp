% L422: A bag contains 6 white and 4 red balls.  Three balls are drawn at random.  What is the probability that one ball is red and the other two are white? ## Solution= 1/2

group(1-2).

given(exactly(6, 1-2, white)).
given(exactly(4, 1-2, red)).

take(1-2, 2-2, 3).

probability(and(exactly(1, 2-2, red), exactly(2, 2-2, white))).

property(property, [white, red]).

