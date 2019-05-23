% M554: A fair coin is flipped 9 times.  What is the probability of getting exactly 6 heads? ## Solution= 0.1640625

group(1-3).
size(1-3, 2).

given(exactly(1, 1-3, v(1-3,0))).
given(exactly(1, 1-3, head)).

take_wr(1-3, 1-5, 9).


probability(exactly(6, 1-5, head)).

property(outcome(0), [head, v(1-3,0)]).

