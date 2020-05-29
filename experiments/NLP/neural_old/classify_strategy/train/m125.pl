% M125: Fatima rolls a fair die with six sides, numbered 1, 2, 3, 4, 5 and 6 and a fair die with four sides, numbered 1, 2, 3 and 4 simultaneously.  What is the probability that the sum of the dice is four or less? ## Solution= 1/4

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).
group(1-5).
size(1-5, 4).

given(exactly(1, 1-5, 1)).
given(exactly(1, 1-5, 4)).
given(exactly(1, 1-5, 2)).
given(exactly(1, 1-5, 3)).

take_wr(1-2, 1-25-0, 1).
take_wr(1-5, 1-25-1, 1).
union(1-25, [1-25-0,1-25-1]).


probability(aggcmp(1-25,outcome(0),sum,=<,4)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

