% M3:  One bag contains 4 white balls and 2 black balls ; another contains 3 white balls and 5 black balls.  If one ball is drawn from each bag, find the probability that both are white? ## Solution= 1/4

group(2-8).

group(1-2).

group(1-12).

given(exactly(5, 1-12, black)).
given(exactly(4, 1-2, white)).
given(exactly(2, 1-2, black)).
given(exactly(3, 1-12, white)).

take(1-2, 2-3, 1).
take(1-12, 2-4, 1).

union(2-8, [2-3, 2-4]).
probability(all(2-8, white)).

property(color, [white, black]).
