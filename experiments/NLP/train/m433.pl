% M433: Two sets of cards with a letter on each card as follows are placed into separate bags.  The fist bag contains letters I, L, J, A, U, the second bag contains letters L, R, H, E, C, A. Sara randomly picked one card from each bag.  What is the probability that she picked the letters ` J' and ` R '? ## Solution= 1/30

group(2-3).
size(2-3, 5).

given(exactly(1, 2-3, i)).
given(exactly(1, 2-3, l)).
given(exactly(1, 2-3, j)).
given(exactly(1, 2-3, u)).
given(exactly(1, 2-3, a)).
group(2-18).
size(2-18, 6).

given(exactly(1, 2-18, r)).
given(exactly(1, 2-18, e)).
given(exactly(1, 2-18, c)).
given(exactly(1, 2-18, h)).
given(exactly(1, 2-18, a)).
given(exactly(1, 2-18, l)).

take_wr(2-3, 2-34-0, 1).
take_wr(2-18, 2-34-1, 1).
union(2-34, [2-34-0,2-34-1]).


probability(and(some(2-34, j), some(2-34, r))).

property(outcome(0), [a, c, e, i, h, j, l, r, u]).

