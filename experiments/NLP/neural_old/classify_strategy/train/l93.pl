% L93: A die with six sides, numbered 1, 2, 3, 4, 5 and 6, is thrown twice.  What is the probability both numbers are prime?  The prime numbers are 2, 3 and 5. ## Solution= 1/4

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-21, 2).


probability(all(1-21, or(or(2, 3), 5))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

