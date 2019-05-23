% L987: Find the probability of getting four sixes and then another number in five random rolls of a balanced die with sides labeled 1, 2, 3, 4, 5 and 6. ## Solution= 5/7776

group(1-19).
size(1-19, 6).

given(exactly(1, 1-19, 2)).
given(exactly(1, 1-19, 1)).
given(exactly(1, 1-19, 6)).
given(exactly(1, 1-19, 4)).
given(exactly(1, 1-19, 5)).
given(exactly(1, 1-19, 3)).

take_wr(1-19, 1-15, 5).


probability(and(exactly(4, 1-15, 6), nth(5, 1-15, not(6)))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

