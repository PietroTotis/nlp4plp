% M303:  A single die with 6 sides, numbered 1, 2, 3, 4, 5 and 6 is rolled.  What is the probability of rolling a 2 or an odd number? ## Solution= 4/6

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-21, 1).


probability(all(1-21, or(2, is_odd))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

