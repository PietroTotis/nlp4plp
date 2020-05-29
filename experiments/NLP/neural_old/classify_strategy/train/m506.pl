% M506: There are 6 balls in a bucket and 3 of them are white.  If you choose a ball at random, what is the probability that it will not be white? ## Solution= 0.5

group(1-4).
size(1-4, 6).

given(exactly(3, 1-4, white)).

take(1-4, 2-5, 1).

probability(none(2-5, white)).

property(colour, [white]).

