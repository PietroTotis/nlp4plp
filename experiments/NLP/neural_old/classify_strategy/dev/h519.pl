% H519: Two dice, each numbered 1, 2, 3, 4, 5 and 6, are tossed.  Find the probability that neither shows a 4. ## Solution= 25/36

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-19, 2).


probability(all(1-19, not(4))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

