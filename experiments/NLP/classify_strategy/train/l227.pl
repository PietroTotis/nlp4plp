% L227: Three dice with 6 sides, labeled 1, 2, 3, 4, 5 and 6, were rolled.  What is the probability that exactly one six came up if it is known that at least one six came up. ## Solution= 0.824175824175824

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-21, 3).
observe(atleast(1, 1-21, 6)).


probability(exactly(1, 1-21, 6)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

