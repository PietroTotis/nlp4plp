% L76: A fair coin is tossed three times.  What is the probability of obtaining one Head and two Tails? ## Solution= 3/8

group(1-3).
size(1-3, 2).

given(exactly(1, 1-3, tails)).
given(exactly(1, 1-3, head)).

take_wr(1-3, 1-5, 3).


probability(and(exactly(1, 1-5, head), exactly(2, 1-5, tails))).

property(outcome(0), [head, tails]).

