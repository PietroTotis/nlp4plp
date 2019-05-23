% M605: Two coins are tossed at the same time.  What is the probability of getting one head and one tail? ## Solution= 0.5

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, tail)).
given(exactly(1, 1-2, head)).

take_wr(1-2, 1-4, 2).


probability(and(exactly(1, 1-4, head), exactly(1, 1-4, tail))).

property(outcome(0), [head, tail]).

