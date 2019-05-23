% M432: If a dice with six sides labelled 1, 2, 3, 4, 5, 6, is thrown twice, what is the probability of getting two 5? ## Solution= 1/36

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-21, 2).


probability(exactly(2, 1-21, 5)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

