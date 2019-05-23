% L911: A fair 4-sided die, labeled 1, 2, 3 and 4, is rolled twice and we assume that all sixteen possible outcomes are equally likely.  What is the probability that the maximum of the 1st and the 2nd roll is 2? ## Solution= 0.1875

group(1-4).
size(1-4, 4).

given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 1-16, 2).


probability(aggcmp(1-16,outcome(0),max,=:=,2)).

property(outcome(0), [1, 3, 2, 4]).

