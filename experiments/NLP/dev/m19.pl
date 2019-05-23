% M19: A coin is tossed ten times.  What is the probability of it coming down heads 5 times? ## Solution= 0.24609375

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, head)).

take_wr(1-2, 1-4, 10).


probability(exactly(5, 1-4, head)).

property(outcome(0), [head, v(1-2,0)]).

