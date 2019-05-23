% L244:  A fair die with 6 sides, labeled 1, 2, 3, 4, 5 and 6, is rolled twice, independently.  Knowing that an even number was obtained on the first roll, what is the probability that the sum of the two numbers obtained is equal to 4? ## Solution= 1/18

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-22, 2).
observe(nth(1, 1-22,is_even)).


probability(aggcmp(1-22,outcome(0),sum,=:=,4)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).