% H303: In a jar there are 3 red balls and 2 blue balls.  What is the probability of drawing at least one red ball when drawing two consecutive balls randomly? ## Solution= 9/10

group(1-3).

given(exactly(2, 1-3, blue)).
given(exactly(3, 1-3, red)).

take(1-3, 2-16, 2).

probability(atleast(1, 2-16, red)).

property(property, [blue, red]).

