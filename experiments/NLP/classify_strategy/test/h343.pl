% H343: In a competition, the chance for John gets the A prize is 1/3 and gets the B prize is 3/4.  What is the chance for him to get at least a prize assuming that he can not get both prizes. ## Solution= 7/9

group(1-12).

given(exactly(rel(3/4,1-12), 1-12, b)).
given(exactly(rel(1/3,1-12), 1-12, a)).

take_wr(1-12, 1-3, 1).

observe(all(1-3, not(and(a, b)))).

probability(all(1-3, or(a, b))).

property(outcome(0), [a]).
property(outcome(1), [b]).

