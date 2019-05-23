% L1053: A coin is tossed repeatedly.  What is the probability that the second head appears at the 7th toss? ## Solution= 6/128

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, head)).

take_wr(1-2, 1-4, 7).


probability(and(exactly(2, 1-4, head), nth(7, 1-4, head))).

property(outcome(0), [head, v(1-2,0)]).

