% L417: Three unbiased coins are tossed.  What is the probability of getting at least 2 heads? ## Solution= 1/2

group(1-3).
size(1-3, 2).

given(exactly(1, 1-3, v(1-3,0))).
given(exactly(1, 1-3, head)).

take_wr(1-3, 1-5, 3).


probability(atleast(2, 1-5, head)).

property(outcome(0), [head, v(1-3,0)]).

