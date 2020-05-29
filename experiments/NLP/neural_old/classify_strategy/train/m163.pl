% M163: If you flip a coin and roll a die with six sides, numbered 1, 2, 3, 4, 5, 6, what is the probability that you will flip a tails and roll more than a 3? ## Solution= 1/4

group(1-9).
size(1-9, 6).

given(exactly(1, 1-9, 2)).
given(exactly(1, 1-9, 1)).
given(exactly(1, 1-9, 6)).
given(exactly(1, 1-9, 4)).
given(exactly(1, 1-9, 5)).
given(exactly(1, 1-9, 3)).
group(1-5).
size(1-5, 2).

given(exactly(1, 1-5, tails)).
given(exactly(1, 1-5, v(1-5,0))).

take_wr(1-5, 1-3, 1).

take_wr(1-9, 1-7, 1).


probability(and(all(1-3, tails), aggcmp(1-7,outcome(1),sum,>,3))).

property(outcome(1), [1, 3, 2, 5, 4, 6]).
property(outcome(0), [v(1-5,0), tails]).

