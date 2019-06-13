% H777: The probability that an entering college student will graduate is 0.4.  In a group of 5 entering students, what is the probability that exactly one will graduate? ## Solution= 0.2592

group(1-6).

given(exactly(rel(.4,1-6), 1-6, graduate)).

take_wr(1-6, 2-3, 5).


probability(exactly(1, 2-3, graduate)).

property(outcome(0), [graduate]).
