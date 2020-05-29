% L198: Suppose we throw a die with 6 sides, labeled 1, 2, 3, 4, 5 and 6, twice.  What is the probability that the two outcomes are different and sum up to 8? ## Solution= 1/9

group(1-5).
size(1-5, 6).

given(exactly(1, 1-5, 2)).
given(exactly(1, 1-5, 1)).
given(exactly(1, 1-5, 6)).
given(exactly(1, 1-5, 4)).
given(exactly(1, 1-5, 5)).
given(exactly(1, 1-5, 3)).

take_wr(1-5, 1-3, 2).


probability(and(all_diff(1-3,outcome(0)), aggcmp(1-3,outcome(0),sum,=:=,8))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

