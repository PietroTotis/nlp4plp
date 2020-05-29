% L1065: An urn contains 2 red balls, 4 blue balls, and 5 white balls.  What is the probability of the event that a ball drawn at random is either red or blue? ## Solution= 6/11

group(1-2).

given(exactly(4, 1-2, blue)).
given(exactly(5, 1-2, white)).
given(exactly(2, 1-2, red)).

take(1-2, 2-10, 1).

probability(all(2-10, or(red, blue))).

property(property, [blue, white, red]).

