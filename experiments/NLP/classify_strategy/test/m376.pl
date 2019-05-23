% M376: Three fair dice with 6 sides, labeled 1, 2, 3, 4, 5 and 6, are rolled.  What is the probability that exactly two of the rolls show a 1? ## Solution= 0.0694444444444444

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-22, 3).


probability(exactly(2, 1-22, 1)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

