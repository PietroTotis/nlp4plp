% M138: If you roll a fair die with six sides, numbered 1, 2, 3, 4, 5 and 6 and a fair die with four sides, numbered 1, 2, 3 and 4, what is the probability that the dice add to 7? ## Solution= 1/6

group(1-26).
size(1-26, 4).

given(exactly(1, 1-26, 1)).
given(exactly(1, 1-26, 4)).
given(exactly(1, 1-26, 2)).
given(exactly(1, 1-26, 3)).
group(1-6).
size(1-6, 6).

given(exactly(1, 1-6, 2)).
given(exactly(1, 1-6, 1)).
given(exactly(1, 1-6, 6)).
given(exactly(1, 1-6, 4)).
given(exactly(1, 1-6, 5)).
given(exactly(1, 1-6, 3)).

take_wr(1-26, 1-3-0, 1).
take_wr(1-6, 1-3-1, 1).
union(1-3, [1-3-0,1-3-1]).


probability(aggcmp(1-3,outcome(0),sum,=:=,7)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

