% M401: What is the probability that in seven flips of a coin, there are four, five, or six tails? ## Solution= 0.4921875

group(1-11).
size(1-11, 2).

given(exactly(1, 1-11, tails)).
given(exactly(1, 1-11, v(1-11,0))).

take_wr(1-11, 1-8, 7).


probability(or(exactly(4, 1-8, tails), or(exactly(5, 1-8, tails), exactly(6, 1-8, tails)))).

property(outcome(0), [v(1-11,0), tails]).

