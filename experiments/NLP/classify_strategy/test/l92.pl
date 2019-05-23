% L92: A coin is tossed three times.  What is the probability of getting two heads and one tail? ## Solution= 3/8

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, tail)).
given(exactly(1, 1-2, head)).

take_wr(1-2, 1-4, 3).


probability(and(exactly(2, 1-4, head), exactly(1, 1-4, tail))).

property(outcome(0), [head, tail]).

