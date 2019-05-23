% M731: A letter is chosen at random from the word E X T R A T E R R E S T R I A L. Find the probability that the letter T is chosen. ## Solution= 3/16

group(1-2).
size(1-2, 16).

given(exactly(4, 1-2, r)).
given(exactly(3, 1-2, e)).
given(exactly(1, 1-2, i)).
given(exactly(3, 1-2, t)).
given(exactly(1, 1-2, s)).
given(exactly(2, 1-2, a)).
given(exactly(1, 1-2, l)).
given(exactly(1, 1-2, x)).

take_wr(1-2, 1-4, 1).


probability(all(1-4, t)).

property(outcome(0), [a, e, i, l, s, r, t, x]).

