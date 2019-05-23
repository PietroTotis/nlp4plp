% L840: It is known that 10 percent of certain articles manufactured are defective.  What is the probability that in a random sample of 12 such articles, 9 are defective? ## Solution= 22*9^3/10^11

group(2-13).

given(exactly(rel(0.1,2-13), 2-13, defective)).

take_wr(2-13, 1-10, 12).


probability(exactly(9, 1-10, defective)).

property(outcome(0), [defective]).

