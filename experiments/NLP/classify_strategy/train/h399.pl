% H399: A die numbered 1, 2, 3, 4, 5 and 6 is thrown 5 times.  what is the probability that 2 appears every time? ## Solution= 1/7776

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-16, 5).


probability(all(1-16, 2)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).
