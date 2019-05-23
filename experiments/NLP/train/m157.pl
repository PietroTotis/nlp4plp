% M157: Suppose that Antonia rolls a pair of fair dice with 6 sides numbered 1, 2, 3, 4, 5, 6.  What is the probability that the first die lands on 5? ## Solution= 1/6

group(1-9).
size(1-9, 6).

given(exactly(1, 1-9, 2)).
given(exactly(1, 1-9, 1)).
given(exactly(1, 1-9, 6)).
given(exactly(1, 1-9, 4)).
given(exactly(1, 1-9, 5)).
given(exactly(1, 1-9, 3)).

take_wr(1-9, 1-4, 2).


probability(nth(1, 1-4, 5)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

