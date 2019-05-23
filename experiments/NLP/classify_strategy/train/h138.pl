% H138: Suppose that a container contains 10,000 particles.  The probability that such a particle escapes from the container equals 0.0004.  What is the probability that more than 5 such escapes occur? ## Solution= .2148

group(1-7).

given(exactly(rel(0.0004,1-7), 1-7, escape)).

take_wr(1-7, 1-4, 10000).


probability(more_than(5, 1-4, escape)).

property(outcome(0), [escape]).

