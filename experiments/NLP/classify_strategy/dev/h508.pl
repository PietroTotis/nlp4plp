% H508: From a box containing 3 white balls and 7 black balls, 30 balls are drawn with replacement.  Find the probability of getting 9 or 10 white balls. ## Solution= 0.29885248001977954

group(1-3).

given(exactly(7, 1-3, black)).
given(exactly(3, 1-3, white)).

take_wr(1-3, 1-14, 30).

probability(or(exactly(9, 1-14, white), exactly(10, 1-14, white))).

property(property, [white, black]).

