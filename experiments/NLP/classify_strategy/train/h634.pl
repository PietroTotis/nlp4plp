% H634: A fair coin is to be flipped 1000 times.  What is the probability that the number of heads exceeds the number of tails? ## Solution= (1/2)-((C(1000,500))/(2^1001))

group(1-3).
size(1-3, 2).

given(exactly(1, 1-3, tails)).
given(exactly(1, 1-3, head)).

take_wr(1-3, 1-7, 1000).


probability(atleast(501, 1-7, head)).

property(outcome(0), [head, tails]).

