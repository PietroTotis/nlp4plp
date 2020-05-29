% H10: Box A contains 2 white and 8 black marbles.  Box B contains 5 white and 4 black marbles.  One randomly selects a marble from box A and puts it in box B.  Then one selects a marble from box B..  Find the probability that this marble is white ## Solution= 13/25

group(2-1).

group(1-1).

group(3-13).

given(exactly(5, 2-1, white)).
given(exactly(4, 2-1, black)).
given(exactly(2, 1-1, white)).
given(exactly(8, 1-1, black)).

take(1-1, 3-5, 1).
take(3-13, 4-5, 1).

union(3-13, [2-1, 3-5]).
probability(all(4-5, white)).

property(property, [white, black]).

