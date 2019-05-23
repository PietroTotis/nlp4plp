% H636: The dodecahedron numbered 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 and 12, and a normal six-sided die, numbered 1, 2, 3, 4, 5, 6, are thrown together.  What is the probability that both the dodecahedron and the die will give a 5? ## Solution= 1/72

group(1-2).
size(1-2, 12).

given(exactly(1, 1-2, 9)).
given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 7)).
given(exactly(1, 1-2, 12)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 10)).
given(exactly(1, 1-2, 3)).
given(exactly(1, 1-2, 11)).
given(exactly(1, 1-2, 8)).
group(1-32).
size(1-32, 6).

given(exactly(1, 1-32, 2)).
given(exactly(1, 1-32, 1)).
given(exactly(1, 1-32, 6)).
given(exactly(1, 1-32, 4)).
given(exactly(1, 1-32, 5)).
given(exactly(1, 1-32, 3)).

take_wr(1-2, 1-48-0, 1).
take_wr(1-32, 1-48-1, 1).
union(1-48, [1-48-0,1-48-1]).


probability(all(1-48, 5)).

property(outcome(0), [11, 10, 12, 1, 3, 2, 5, 4, 7, 6, 9, 8]).

