% H417: A coin is tossed 5 times.  What is the probability that head appears more number of times than the tail? ## Solution= 1/2

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, head)).

take_wr(1-2, 1-4, 5).


probability(atleast(3, 1-4, head)).

property(outcome(0), [head, v(1-2,0)]).

