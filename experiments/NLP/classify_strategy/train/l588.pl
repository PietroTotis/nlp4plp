% L588: Two symmetric 6-sided dice have both had two of their sides painted red, two painted black, one painted yellow, and the other painted white.  When this pair of dice is rolled, what is the probability that both dice land with the same color face up? ## Solution= 5/18

group(2-5).

given(exactly(rel(2/6,2-5), 2-5, black)).
given(exactly(rel(1/6,2-5), 2-5, white)).
given(exactly(rel(1/6,2-5), 2-5, yellow)).
given(exactly(rel(2/6,2-5), 2-5, red)).

take_wr(2-5, 2-7, 2).


probability(all_same(2-7,outcome(0))).

property(outcome(0), [white, black, yellow, red]).

