% L46: A coin is tossed 9 times.  What is the probability of getting at least 2 heads? ## Solution= 0.98046875

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, head)).

take_wr(1-2, 1-4, 9).


probability(atleast(2, 1-4, head)).

property(outcome(0), [head, v(1-2,0)]).

