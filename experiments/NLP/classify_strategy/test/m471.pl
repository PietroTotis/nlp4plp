% M471: Two dice with six sides, labeled 1, 2, 3, 4, 5, 6, are rolled.  If the first one top with 5 then what is the probability that the total of the two will be greater than 7? ## Solution= 0.66666667

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-21, 2).
observe(nth(1, 1-21, 5)).


probability(aggcmp(1-21,outcome(0),sum,>,7)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

