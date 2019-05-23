% H551: A bag contain 5 red balls and 4 white balls.  Three balls are withdrawn without replacement.  Find the probability of drawing at least 2 red balls. ## Solution= 25/42

group(1-2).

given(exactly(4, 1-2, white)).
given(exactly(5, 1-2, red)).

take(1-2, 2-2, 3).

probability(atleast(2, 2-2, red)).

property(property, [white, red]).

