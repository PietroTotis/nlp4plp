% L1063: An urn contains 2 red balls, 4 blue balls, and 5 white balls.  What is the probability of the event R that a ball drawn at random is red? ## Solution= 2/11

group(1-2).

given(exactly(4, 1-2, blue)).
given(exactly(5, 1-2, white)).
given(exactly(2, 1-2, red)).

take(1-2, 2-11, 1).

probability(all(2-11, red)).

property(property, [blue, white, red]).

