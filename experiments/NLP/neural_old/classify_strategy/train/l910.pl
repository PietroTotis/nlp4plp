% L910: In an experiment involving two successive rolls of a die with sides labeled 1, 2, 3, 4, 5 and 6, you are told that the sum of the two rolls is 9.  How likely is it that the first roll was a 6? ## Solution= 0.25

group(1-10).
size(1-10, 6).

given(exactly(1, 1-10, 2)).
given(exactly(1, 1-10, 1)).
given(exactly(1, 1-10, 6)).
given(exactly(1, 1-10, 4)).
given(exactly(1, 1-10, 5)).
given(exactly(1, 1-10, 3)).

take_wr(1-10, 1-7, 2).
observe(aggcmp(1-7,outcome(0),sum,=:=,9)).


probability(nth(1, 1-7, 6)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

