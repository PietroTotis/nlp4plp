% L178: A balanced coin is tossed three times.  Calculate the probability that exactly two of the three tosses result in heads. ## Solution= 3/8

group(1-3).
size(1-3, 2).

given(exactly(1, 1-3, v(1-3,0))).
given(exactly(1, 1-3, head)).

take_wr(1-3, 1-5, 3).


probability(exactly(2, 1-5, head)).

property(outcome(0), [head, v(1-3,0)]).

