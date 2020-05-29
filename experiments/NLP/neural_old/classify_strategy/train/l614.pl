% L614: If 3 balls are randomly drawn from a bowl containing 6 white and 5 black balls, what is the probability that one of the balls is white and the other two black? ## Solution= 4/11

group(1-9).

given(exactly(6, 1-9, white)).
given(exactly(5, 1-9, black)).

take(1-9, 1-3, 3).

probability(and(exactly(1, 1-3, white), exactly(2, 1-3, black))).

property(property, [white, black]).

