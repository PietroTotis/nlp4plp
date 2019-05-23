% L353: We flip a fair coin 20 times.  What is the probability of 15 or more Heads? ## Solution= 0.0206947

group(1-5).
size(1-5, 2).

given(exactly(1, 1-5, v(1-5,0))).
given(exactly(1, 1-5, head)).

take_wr(1-5, 1-2, 20).


probability(atleast(15, 1-2, head)).

property(outcome(0), [head, v(1-5,0)]).

