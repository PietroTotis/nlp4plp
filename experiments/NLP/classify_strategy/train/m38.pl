% M38: Two fair die with six faces numbered 1, 2, 3, 4, 5, 6, are rolled and the face values are added.  What is the probability of obtaining an odd number greater than 8? ## Solution= 0.1666666667

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-21, 2).


probability(and(aggcmp(1-21,outcome(0),sum,is_odd), aggcmp(1-21,outcome(0),sum,>,8))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

