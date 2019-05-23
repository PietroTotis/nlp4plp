% L394: A pair of dice consisting of a six-sided die, labeled 1, 2, 3, 4, 5 and 6, and a four-sided die, labeled 1, 2, 3 and 4, is rolled and the sum is determined.  Find the probability that a sum of 5 is rolled. ## Solution= 4/24

group(1-8).
size(1-8, 6).

given(exactly(1, 1-8, 2)).
given(exactly(1, 1-8, 1)).
given(exactly(1, 1-8, 6)).
given(exactly(1, 1-8, 4)).
given(exactly(1, 1-8, 5)).
given(exactly(1, 1-8, 3)).
group(1-26).
size(1-26, 4).

given(exactly(1, 1-26, 1)).
given(exactly(1, 1-26, 4)).
given(exactly(1, 1-26, 2)).
given(exactly(1, 1-26, 3)).

take_wr(1-26, 1-39-0, 1).
take_wr(1-8, 1-39-1, 1).
union(1-39, [1-39-0,1-39-1]).


probability(aggcmp(1-39,outcome(0),sum,=:=,5)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

