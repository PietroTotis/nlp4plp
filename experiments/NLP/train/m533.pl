% M533: If one 6-sided die is rolled, what is the probability of rolling a number that is not 3 or 6? ## Solution= 2/3

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, v(1-4,1))).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, v(1-4,3))).
given(exactly(1, 1-4, v(1-4,0))).
given(exactly(1, 1-4, 3)).
given(exactly(1, 1-4, v(1-4,2))).

take_wr(1-4, 1-6, 1).


probability(all(1-6, and(not(3), not(6)))).

property(outcome(0), [v(1-4,0), v(1-4,1), v(1-4,2), v(1-4,3), 3, 6]).

