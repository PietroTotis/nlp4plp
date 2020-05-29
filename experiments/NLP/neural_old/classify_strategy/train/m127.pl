% M127: If you roll a fair die with 6 sides, numbered 1, 2, 3, 4, 5, 6, and a fair die with 4 sides, numbered 1, 2, 3, 4, what is the probability that neither die shows a 1? ## Solution= 15/24

group(1-27).
size(1-27, 4).

given(exactly(1, 1-27, 1)).
given(exactly(1, 1-27, 4)).
given(exactly(1, 1-27, 2)).
given(exactly(1, 1-27, 3)).
group(1-6).
size(1-6, 6).

given(exactly(1, 1-6, 2)).
given(exactly(1, 1-6, 1)).
given(exactly(1, 1-6, 6)).
given(exactly(1, 1-6, 4)).
given(exactly(1, 1-6, 5)).
given(exactly(1, 1-6, 3)).

take_wr(1-27, 1-3-0, 1).
take_wr(1-6, 1-3-1, 1).
union(1-3, [1-3-0,1-3-1]).


probability(all(1-3, not(1))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

