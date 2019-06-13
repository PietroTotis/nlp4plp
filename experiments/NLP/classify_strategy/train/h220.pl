% H220: A fair coin is tossed 10 times.  What is the probability of at least five heads? ## Solution= 0.62304688

group(1-3).
size(1-3, 2).

given(exactly(1, 1-3, v(1-3,0))).
given(exactly(1, 1-3, head)).

take_wr(1-3, 1-5, 10).


probability(atleast(5, 1-5, head)).

property(outcome(0), [head, v(1-3,0)]).
