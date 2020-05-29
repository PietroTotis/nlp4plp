% L333: What is the probability that in 10 tosses with a fair coin we get exactly 5 Heads and 5 Tails? ## Solution= 252/1024

group(1-12).
size(1-12, 2).

given(exactly(1, 1-12, tails)).
given(exactly(1, 1-12, head)).

take_wr(1-12, 1-8, 10).


probability(and(exactly(5, 1-8, head), exactly(5, 1-8, tails))).

property(outcome(0), [head, tails]).

