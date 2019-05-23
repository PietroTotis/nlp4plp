% L503: A bag contains four balls.  One is blue, one is white and two are red.  Someone draws together two balls at random from the bag.  He looks at the balls and tells you that there is a red ball among the two balls drawn out.  What is the probability the the other ball drawn out is also red? ## Solution= 1/5

group(1-2).
size(1-2, 4).

given(exactly(1, 1-2, blue)).
given(exactly(1, 1-2, white)).
given(exactly(2, 1-2, red)).

take(1-2, 3-5, 2).
observe(atleast(1, 3-5, red)).

probability(exactly(2, 3-5, red)).

property(property, [blue, white, red]).

