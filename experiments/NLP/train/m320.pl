% M320: Two marbles are drawn without replacement from a jar with four black and three white marbles.  What is the probability that both are black? ## Solution= 0.285714285714286

group(1-9).

given(exactly(3, 1-9, white)).
given(exactly(4, 1-9, black)).

take(1-9, 1-2, 2).

probability(all(1-2, black)).

property(colour, [white, black]).

