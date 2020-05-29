% L1064: An urn contains 2 red balls, 4 blue balls, and 5 white balls.  What is the probability of the event `` not R '' that is, that a ball drawn at random is not red? ## Solution= 9/11

group(1-2).

given(exactly(4, 1-2, blue)).
given(exactly(5, 1-2, white)).
given(exactly(2, 1-2, red)).

take(1-2, 2-17, 1).

probability(none(2-17, red)).

property(property, [blue, white, red]).

