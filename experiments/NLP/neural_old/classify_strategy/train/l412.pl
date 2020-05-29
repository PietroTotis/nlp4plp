% L412: You toss a coin and roll a six-sided die, labeled 1, 2, 3, 4, 5 and 6.  What is the probability of getting a tail and a 4 on the die? ## Solution= 1/12

group(1-9).
size(1-9, 6).

given(exactly(1, 1-9, 2)).
given(exactly(1, 1-9, 1)).
given(exactly(1, 1-9, 6)).
given(exactly(1, 1-9, 4)).
given(exactly(1, 1-9, 5)).
given(exactly(1, 1-9, 3)).
group(1-4).
size(1-4, 2).

given(exactly(1, 1-4, v(1-4,0))).
given(exactly(1, 1-4, tail)).

take_wr(1-4, 1-2, 1).

take_wr(1-9, 1-6, 1).


probability(and(all(1-2, tail), all(1-6, 4))).

property(outcome(1), [1, 3, 2, 5, 4, 6]).
property(outcome(0), [v(1-4,0), tail]).

