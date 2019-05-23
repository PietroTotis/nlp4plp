% M270: A fair spinner has eight equal sections.  The sections are labeled A, A, A, B, B, C, D and E.  What is the probability that the arrow lands on a A? ## Solution= 3/8

group(1-3).
size(1-3, 8).

given(exactly(3, 1-3, a)).
given(exactly(1, 1-3, d)).
given(exactly(2, 1-3, b)).
given(exactly(1, 1-3, e)).
given(exactly(1, 1-3, c)).

take_wr(1-3, 3-8, 1).


probability(all(3-8, a)).

property(outcome(0), [a, c, b, e, d]).

