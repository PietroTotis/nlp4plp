% L260: What is the probability of rolling a die with 6 sides, labeled 1, 2, 3, 4, 5 and 6, and not getting a 1? ## Solution= 5/6

group(1-8).
size(1-8, 6).

given(exactly(1, 1-8, 2)).
given(exactly(1, 1-8, 1)).
given(exactly(1, 1-8, 6)).
given(exactly(1, 1-8, 4)).
given(exactly(1, 1-8, 5)).
given(exactly(1, 1-8, 3)).

take_wr(1-8, 1-6, 1).


probability(all(1-6, not(1))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

