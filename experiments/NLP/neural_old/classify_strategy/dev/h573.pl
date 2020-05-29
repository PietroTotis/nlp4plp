% H573: In 12 throws of a six-sided die, numbered 1, 2, 3, 4, 5, 6, what is the probability of exactly 4 sixes turning up? ## Solution= .08883

group(1-7).
size(1-7, 6).

given(exactly(1, 1-7, 2)).
given(exactly(1, 1-7, 1)).
given(exactly(1, 1-7, 6)).
given(exactly(1, 1-7, 4)).
given(exactly(1, 1-7, 5)).
given(exactly(1, 1-7, 3)).

take_wr(1-7, 1-3, 12).


probability(exactly(4, 1-3, 6)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

