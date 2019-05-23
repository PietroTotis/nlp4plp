% L538: One bag contains 4 white balls and 3 black balls, and a second bag contains 3 white balls and 5 black balls.  One ball is drawn from the first bag and placed unseen in the second bag.  What is the probability that a ball now drawn from the second bag is black? ## Solution= 38/63

group(1-2).

group(1-15).

group(2-15).

given(exactly(4, 1-2, white)).
given(exactly(3, 1-2, black)).
given(exactly(3, 1-15, white)).
given(exactly(5, 1-15, black)).

take(2-15, 3-7, 1).
take(1-2, 2-2, 1).

union(2-15, [2-2, 1-15]).
probability(all(3-7, black)).

property(colour, [white, black]).

