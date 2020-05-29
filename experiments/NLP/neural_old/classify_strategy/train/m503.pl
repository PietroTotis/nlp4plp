% M503: If a single 6-sided die is rolled, what is the probability of rolling a number that is not 1 or 5? ## Solution= 2/3

group(1-5).
size(1-5, 6).

given(exactly(1, 1-5, v(1-5,3))).
given(exactly(1, 1-5, 1)).
given(exactly(1, 1-5, v(1-5,0))).
given(exactly(1, 1-5, 5)).
given(exactly(1, 1-5, v(1-5,2))).
given(exactly(1, 1-5, v(1-5,1))).

take_wr(1-5, 1-7, 1).


probability(all(1-7, and(not(1), not(5)))).

property(outcome(0), [v(1-5,2), 1, 5, v(1-5,1), v(1-5,0), v(1-5,3)]).

