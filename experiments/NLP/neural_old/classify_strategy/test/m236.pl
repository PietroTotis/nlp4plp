% M236: You 're going to flip a coin two times.  What is the probability of getting a heads on the first or second flip or even on both? ## Solution= 3/4

group(1-7).
size(1-7, 2).

given(exactly(1, 1-7, v(1-7,0))).
given(exactly(1, 1-7, head)).

take_wr(1-7, 1-5, 2).


probability(or(or(nth(1, 1-5, head), nth(2, 1-5, head)), all(1-5, head))).

property(outcome(0), [v(1-7,0), head]).

