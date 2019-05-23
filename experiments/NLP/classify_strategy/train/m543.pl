% M543: If a die with 6 sides is rolled, what is the probability of rolling a number that is not 2 or 4? ## Solution= 2/3

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, v(1-3,3))).
given(exactly(1, 1-3, v(1-3,2))).
given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, v(1-3,1))).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, v(1-3,0))).

take_wr(1-3, 1-8, 1).


probability(all(1-8, and(not(2), not(4)))).

property(outcome(0), [v(1-3,3), v(1-3,2), v(1-3,1), v(1-3,0), 2, 4]).

