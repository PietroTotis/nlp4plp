% H384: Aimee tosses one fair 6-sided die labeled 1, 2, 3, 4, 5, and 6 and one fair 4-sided die labeled 1, 2, 3, and 4.  What is the probability that the sum Aimee rolls is less than 5? ## Solution= 1/4

group(1-5).
size(1-5, 6).

given(exactly(1, 1-5, 2)).
given(exactly(1, 1-5, 1)).
given(exactly(1, 1-5, 6)).
given(exactly(1, 1-5, 4)).
given(exactly(1, 1-5, 5)).
given(exactly(1, 1-5, 3)).
group(1-23).
size(1-23, 4).

given(exactly(1, 1-23, 1)).
given(exactly(1, 1-23, 4)).
given(exactly(1, 1-23, 2)).
given(exactly(1, 1-23, 3)).

take_wr(1-23, 2-9-0, 1).
take_wr(1-5, 2-9-1, 1).
union(2-9, [2-9-0,2-9-1]).


probability(aggcmp(2-9,outcome(0),sum,<,5)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

