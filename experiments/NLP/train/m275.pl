% M275: Thomas has 12 cards, each with a letter on it.  The letters are: c, o, r, b, e, t, t, m, a, t, h, s.  He picks a card at random.  What is the probability that he picks a vowel? ## Solution= 1/4

group(3-4).

given(exactly(rel(3/12,3-4), 3-4, vowel)).

take_wr(3-4, 3-2, 1).


probability(all(3-2, vowel)).

property(outcome(0), [vowel]).

