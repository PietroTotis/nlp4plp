% M368: A standard die with six sides, numbered 1, 2, 3, 4, 5, 6, is thrown four times.  What is the probability that all four rolls show a six? ## Solution= 0.000771604938271605

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-22, 4).


probability(all(1-22, 6)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

