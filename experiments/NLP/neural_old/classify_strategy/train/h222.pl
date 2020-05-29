% H222: If five numbers are selected at random from the set of numbers, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, what is the probability that their minimum is larger than 5? ## Solution= 0.19369195

group(1-12).

given(exactly(1, 1-12, 20)).
given(exactly(1, 1-12, 2)).
given(exactly(1, 1-12, 14)).
given(exactly(1, 1-12, 1)).
given(exactly(1, 1-12, 15)).
given(exactly(1, 1-12, 7)).
given(exactly(1, 1-12, 19)).
given(exactly(1, 1-12, 6)).
given(exactly(1, 1-12, 13)).
given(exactly(1, 1-12, 18)).
given(exactly(1, 1-12, 5)).
given(exactly(1, 1-12, 12)).
given(exactly(1, 1-12, 4)).
given(exactly(1, 1-12, 11)).
given(exactly(1, 1-12, 10)).
given(exactly(1, 1-12, 17)).
given(exactly(1, 1-12, 9)).
given(exactly(1, 1-12, 16)).
given(exactly(1, 1-12, 3)).
given(exactly(1, 1-12, 8)).

take(1-12, 1-3, 5).

probability(aggcmp(1-3,outcome,min,>,5)).

property(outcome, [11, 10, 13, 12, 20, 14, 17, 16, 19, 18, 15, 1, 3, 2, 5, 4, 7, 6, 9, 8]).

