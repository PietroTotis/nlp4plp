% M168: A coin is tossed and a six-sided die, labeled 1, 2, 3, 4, 5, 6 is rolled.  What is the probability of getting a head on the coin and a 6 on the die? ## Solution= 1/12

group(1-8).
size(1-8, 6).

given(exactly(1, 1-8, 2)).
given(exactly(1, 1-8, 1)).
given(exactly(1, 1-8, 6)).
given(exactly(1, 1-8, 4)).
given(exactly(1, 1-8, 5)).
given(exactly(1, 1-8, 3)).
group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, head)).

take_wr(1-2, 1-4, 1).

take_wr(1-8, 1-23, 1).


probability(and(all(1-4, head), all(1-23, 6))).

property(outcome(1), [1, 3, 2, 5, 4, 6]).
property(outcome(0), [head, v(1-2,0)]).

