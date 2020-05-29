% H528: The probability that a certain variety of plant produces a yellow flower is 1/5.  If two plants are selected at random, what is the probability that both produce yellow flowers? ## Solution= 1/25

group(1-8).

given(exactly(rel(1/5,1-8), 1-8, yellow)).

take_wr(1-8, 2-3, 2).


probability(all(2-3, yellow)).

property(outcome(0), [yellow]).

