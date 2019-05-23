% M445: A fair die with six sides, labeled 1, 2, 3, 4, 5, 6 is tossed twice.  What is the probability of getting a 4 or 5 on the first toss and a 1, 2, or 3 in the second toss? ## Solution= 1/6

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-21, 2).


probability(and(nth(1, 1-21, or(4, 5)), nth(2, 1-21, or(or(1, 2), 3)))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

