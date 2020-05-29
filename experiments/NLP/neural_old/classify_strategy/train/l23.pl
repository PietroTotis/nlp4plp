% L23: Jan has won three prizes at the ring-toss booth.  The prizes available are: A - straw finger trap, B - green go, C - plastic spider, D - trick ink and E - silly putty.  Assuming her selection at random, with no duplicates, what is the probability Jan will select B first, then A, then D? ## Solution= 1/60

group(2-2).

group(rest(3-19)).

group(rest(3-21)).

given(exactly(1, 2-2, b)).
given(exactly(1, 2-2, a)).
given(exactly(1, 2-2, d)).
given(exactly(1, 2-2, c)).
given(exactly(1, 2-2, e)).

take(rest(3-21), 3-24, 1).
take(2-2, 3-19, 1).
take(rest(3-19), 3-21, 1).

probability(and(all(3-24, d), and(all(3-19, b), all(3-21, a)))).

property(type, [a, c, b, e, d]).

