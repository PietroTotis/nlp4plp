% L671: An urn contains 3 red balls, 2 blue balls, and 5 white balls.  A ball is selected and its color noted.  Then it is replaced.  A second ball is selected and its color noted.  Find the probability of selecting 2 blue balls. ## Solution= 1/25

group(1-2).

given(exactly(2, 1-2, blue)).
given(exactly(5, 1-2, white)).
given(exactly(3, 1-2, red)).

take_wr(1-2, 5-6, 2).

probability(all(5-6, blue)).

property(property, [blue, white, red]).

