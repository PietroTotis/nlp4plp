% H419: A coin is tossed 10 times.  Find the probability of getting exactly six heads. ## Solution= (C(10,4))/(2^10)

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, head)).

take_wr(1-2, 1-4, 10).


probability(exactly(6, 1-4, head)).

property(outcome(0), [head, v(1-2,0)]).

