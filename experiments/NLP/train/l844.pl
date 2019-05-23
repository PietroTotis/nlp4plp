% L844: Suppose that 90 percent of people are right-handed.  What is the probability that at most 6 of a random sample of 10 people are right-handed? ## Solution= 0.012795198

group(2-15).

given(exactly(rel(0.9,2-15), 2-15, right-handed)).

take_wr(2-15, 2-16, 10).


probability(atmost(6, 2-16, right-handed)).

property(outcome(0), [right-handed]).

