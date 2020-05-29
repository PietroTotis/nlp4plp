% L128: A fair coin is tossed five times.  What is the probability of obtaining two heads? ## Solution= 5/16

group(1-3).
size(1-3, 2).

given(exactly(1, 1-3, v(1-3,0))).
given(exactly(1, 1-3, head)).

take_wr(1-3, 1-5, 5).


probability(exactly(2, 1-5, head)).

property(outcome(0), [head, v(1-3,0)]).

