% M523: If three 6-sided dice are rolled, what is the probability of rolling a number that is not 2 or 4? ## Solution= 0.96296296

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, v(1-4,1))).
given(exactly(1, 1-4, v(1-4,3))).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, v(1-4,0))).
given(exactly(1, 1-4, v(1-4,2))).

take_wr(1-4, 1-6, 3).


probability(some(1-6, and(not(2), not(4)))).

property(outcome(0), [v(1-4,0), v(1-4,1), v(1-4,2), v(1-4,3), 2, 4]).

