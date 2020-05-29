% L224: A die with 6 sides, labeled 1, 2, 3, 4, 5 and 6, is thrown six times.  Find the probabilities of obtaining exactly 4 sixes? ## Solution= 0.00803755144032922

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-21, 6).


probability(exactly(4, 1-21, 6)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

