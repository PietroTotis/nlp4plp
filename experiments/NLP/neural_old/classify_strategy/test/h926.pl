% H926: A fair coin was tossed four times.  If the last toss was a tail, what is the probability that an even number of heads was tossed? ## Solution= 0.5

group(1-3).

given(exactly(1, 1-3, tail)).
given(exactly(1, 1-3, head)).

take_wr(1-3, 1-5, 4).
observe(nth(4, 1-5, tail)).

probability(or(exactly(0, 1-5, head), exactly(2, 1-5, head))).

property(property, [head, tail]).

