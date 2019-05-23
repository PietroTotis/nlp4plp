% H585: A die, with 6 sides numbered 1, 2, 3, 4, 5 and 6, is rolled 10 times.  What is the probability of at least 2 sixes turning up? ## Solution= 0.51548325

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-21, 10).


probability(atleast(2, 1-21, 6)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

