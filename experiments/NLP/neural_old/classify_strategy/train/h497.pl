% H497: One bag contains 6 white balls and 4 black balls, and a second bag contains 5 white balls and 4 black balls.  One ball is drawn at random from the first bag and is placed unseen in the second bag.  What is the probability that a ball now drawn from the second bag is black? ## Solution= 11/25

group(2-18).

group(1-2).

group(1-15).

given(exactly(6, 1-2, white)).
given(exactly(4, 1-2, black)).
given(exactly(5, 1-15, white)).
given(exactly(4, 1-15, black)).

take(2-18, 3-7, 1).
take(1-2, 2-2, 1).

union(2-18, [2-2, 1-15]).
probability(all(3-7, black)).

property(property, [white, black]).

