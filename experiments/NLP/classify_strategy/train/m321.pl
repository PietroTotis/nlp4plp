% M321: Two marbles are drawn without replacement from a jar with four black and three white marbles.  What is the probability that the first is black and the second is white? ## Solution= 0.285714285714286

group(1-9).

given(exactly(3, 1-9, white)).
given(exactly(4, 1-9, black)).

take(1-9, 1-2, 2).

probability(and(nth(1, 1-2, black), nth(2, 1-2, white))).

property(colour, [white, black]).

