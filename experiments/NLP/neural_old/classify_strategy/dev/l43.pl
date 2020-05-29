% L43: A spinner comes up red 25 percent of the time and green 25 percent of the time.  The rest of the time it lands on blue.  What is the probability that both spins land on the same color? ## Solution= 3/8

group(1-2).

given(exactly(rel(0.25,1-2), 1-2, green)).
given(exactly(rel(0.5,1-2), 1-2, blue)).
given(exactly(rel(0.25,1-2), 1-2, red)).

take_wr(1-2, 3-7, 2).


probability(all_same(3-7,outcome(0))).

property(outcome(0), [blue, green, red]).

