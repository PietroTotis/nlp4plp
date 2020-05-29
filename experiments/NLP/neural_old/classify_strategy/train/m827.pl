% M827: What is the probability of obtaining five heads in a row when flipping a coin? ## Solution= 1/32

group(1-15).
size(1-15, 2).

given(exactly(1, 1-15, v(1-15,0))).
given(exactly(1, 1-15, head)).

take_wr(1-15, 1-13, 5).


probability(exactly(5, 1-13, head)).

property(outcome(0), [head, v(1-15,0)]).

