% M600: Three balls, one coloured yellow, one black and one white are in a cloth bag.  One ball is removed from the bag and then another, without replacing the first ball.  What is the probability that a black ball is selected followed by a yellow ball? ## Solution= 0.166666666666667

group(1-17).
size(1-17, 3).

given(exactly(1, 1-17, yellow)).
given(exactly(1, 1-17, black)).
given(exactly(1, 1-17, white)).

take(1-17, 2-2, 2).

probability(and(nth(1, 2-2, black), nth(2, 2-2, yellow))).

property(colour, [white, black, yellow]).

