% H418: A coin is tossed 5 times.  If head appears more number of times than tail, what is the probability that head appears on all five toss? ## Solution= 1/16

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, head)).

take_wr(1-2, 1-4, 5).
observe(atleast(3, 1-4, head)).


probability(all(1-4, head)).

property(outcome(0), [head, v(1-2,0)]).

