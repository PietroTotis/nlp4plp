% L356: We independently throw 10 balls into one of 3 boxes, numbered 1, 2 and 3, with probabilities 1/4, 1/2 and 1/4, respectively.  What is the probability that box 1 has 2, box 2 has 5 and box 3 has 3 balls? ## Solution= 315/4096

group(1-5).

given(exactly(rel(1/4,1-5), 1-5, 1)).
given(exactly(rel(1/4,1-5), 1-5, 3)).
given(exactly(rel(1/2,1-5), 1-5, 2)).

take_wr(1-5, 1-3, 10).


probability(and(and(exactly(2, 1-3, 1), exactly(5, 1-3, 2)), exactly(3, 1-3, 3))).

property(outcome(0), [1, 3, 2]).

