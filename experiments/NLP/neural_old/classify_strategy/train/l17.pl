% L17: A fair coin is tossed three times.  Find the probability of getting exactly one head. ## Solution= 3/8

group(1-3).
size(1-3, 2).

given(exactly(1, 1-3, v(1-3,0))).
given(exactly(1, 1-3, head)).

take_wr(1-3, 1-5, 3).


probability(exactly(1, 1-5, head)).

property(outcome(0), [head, v(1-3,0)]).

