% M447: Two balls are drawn successively without replacement from a box which contains 4 white balls and 3 red balls.  What is the probability that both balls are red? ## Solution= 1/7

group(1-10).

given(exactly(3, 1-10, red)).
given(exactly(4, 1-10, white)).

take(1-10, 1-2, 2).

probability(all(1-2, red)).

property(colour, [white, red]).

