% H283: What is the probability of getting heads in all four trials when a coin is tossed four times? ## Solution= 1/16

group(1-14).
size(1-14, 2).

given(exactly(1, 1-14, v(1-14,0))).
given(exactly(1, 1-14, head)).

take_wr(1-14, 1-11, 4).


probability(all(1-11, head)).

property(outcome(0), [v(1-14,0), head]).

