% L13: Two fair six-sided dice, numbered 1, 2, 3, 4, 5 and 6, are rolled and the face values are added.  The probability of obtaining an odd number greater than 8 is ## Solution= 0.166666666666667

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 5)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 1-20, 2).


probability(and(aggcmp(1-20,outcome(0),sum,is_odd), aggcmp(1-20,outcome(0),sum,>,8))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

