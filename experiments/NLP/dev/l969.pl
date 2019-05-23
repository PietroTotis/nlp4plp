% L969: A coin is to be tossed until a head appears twice in a row.  What is the probability that it will be tossed exactly four times? ## Solution= 1/8

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, head)).

take_wr(1-2, 1-6, 4).


probability(and(and(nth(3, 1-6, head), nth(4, 1-6, head)), nth(2, 1-6, not(head)))).

property(outcome(0), [head, v(1-2,0)]).

