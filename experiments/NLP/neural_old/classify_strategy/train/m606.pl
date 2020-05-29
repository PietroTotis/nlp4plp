% M606: Two coins are tossed at the same time.  What is the probability of getting two heads? ## Solution= 0.25

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, head)).

take_wr(1-2, 1-4, 2).


probability(all(1-4, head)).

property(outcome(0), [head, v(1-2,0)]).

