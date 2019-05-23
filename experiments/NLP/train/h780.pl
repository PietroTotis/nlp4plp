% H780: The probability that an entering college student will have a student loan is 0.9.  In a group of 12 entering students, what is the probability that exactly 10 have a student loan? ## Solution= 0.23012777

group(1-6).

given(exactly(rel(.9,1-6), 1-6, loan)).

take_wr(1-6, 2-3, 12).


probability(exactly(10, 2-3, loan)).

property(outcome(0), [loan]).

