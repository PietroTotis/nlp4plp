% M485: A coin is tossed three times.  What is the probability that exactly two heads occur, given that the first outcome was a head? ## Solution= 0.5

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, head)).

take_wr(1-2, 1-4, 3).
observe(nth(1, 1-4, head)).


probability(exactly(2, 1-4, head)).

property(outcome(0), [head, v(1-2,0)]).

