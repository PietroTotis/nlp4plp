% L326: A dice with 6 sides, labeled 1, 2, 3, 4, 5 and 6, is tossed twelve times.  What is the probability that all the faces will appear twice? ## Solution= 0.0034

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-21, 12).


probability(and(and(and(exactly(2, 1-21, 1), exactly(2, 1-21, 2)), and(exactly(2, 1-21, 3), exactly(2, 1-21, 4))), and(exactly(2, 1-21, 5), exactly(2, 1-21, 6)))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

