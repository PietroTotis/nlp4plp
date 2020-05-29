% L294: A single six-sided die, labeled 1, 2, 3, 4, 5 and 6, is tossed.  What is the probability of a 2 turning up? ## Solution= 1/6

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 5)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 1-20, 1).


probability(all(1-20, 2)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

