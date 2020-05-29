% M273: Thomas has 12 cards, each with a letter on it.  The letters are: c, o, r, b, e, t, t, m, a, t, h, s.  He picks a card at random.  What is the probability that he does not pick letter e? ## Solution= 0.916666666666667

group(2-2).
size(2-2, 12).

given(exactly(1, 2-2, r)).
given(exactly(1, 2-2, e)).
given(exactly(1, 2-2, c)).
given(exactly(1, 2-2, h)).
given(exactly(3, 2-2, t)).
given(exactly(1, 2-2, b)).
given(exactly(1, 2-2, s)).
given(exactly(1, 2-2, a)).
given(exactly(1, 2-2, o)).
given(exactly(1, 2-2, m)).

take_wr(2-2, 4-9, 1).


probability(all(4-9, not(e))).

property(outcome(0), [a, c, b, e, h, m, o, s, r, t]).

