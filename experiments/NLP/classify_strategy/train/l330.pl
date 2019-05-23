% L330: We throw three dice with six sides, labeled 1, 2, 3, 4, 5 and 6.  What is the probability that at least one 6 appears given that all the three outcomes were completely different? ## Solution= 1/2

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 5)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 1-2, 3).
observe(all_diff(1-2,outcome(0))).


probability(atleast(1, 1-2, 6)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

