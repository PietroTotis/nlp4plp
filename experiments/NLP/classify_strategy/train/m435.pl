% M435: Two sets of cards with a letter on each card as follows are placed into separate bags.  The fist bag contains letters I, L, J, A, U, the second bag contains letters L, R, H, E, C, A. Sara randomly picked one card from each bag.  What is the probability that both letters are vowels? ## Solution= 1/5

group(2-3).
size(2-3, 5).

given(exactly(1, 2-3, l)).
given(exactly(3, 2-3, vowel)).
given(exactly(1, 2-3, j)).
group(2-18).
size(2-18, 6).

given(exactly(1, 2-18, l)).
given(exactly(2, 2-18, vowel)).
given(exactly(1, 2-18, r)).
given(exactly(1, 2-18, h)).
given(exactly(1, 2-18, c)).

take_wr(2-3, 2-34-0, 1).
take_wr(2-18, 2-34-1, 1).
union(2-34, [2-34-0,2-34-1]).


probability(all(2-34, vowel)).

property(outcome(0), [c, h, j, l, r, vowel]).

