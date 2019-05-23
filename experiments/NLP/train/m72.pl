% M72: Suppose a coin is flipped 3 times.  What is the probability of getting two tails and one head? ## Solution= 3/8

group(1-3).
size(1-3, 2).

given(exactly(1, 1-3, tails)).
given(exactly(1, 1-3, head)).

take_wr(1-3, 1-5, 3).


probability(and(exactly(2, 1-5, tails), exactly(1, 1-5, head))).

property(outcome(0), [head, tails]).

