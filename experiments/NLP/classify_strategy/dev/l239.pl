% L239: Find the probability of exactly four zeros occurring in an 8-bit word. ## Solution= 70/256

group(1-12).
size(1-12, 2).

given(exactly(1, 1-12, zero)).
given(exactly(1, 1-12, v(1-12,0))).

take_wr(1-12, 1-8, 8).


probability(exactly(4, 1-8, zero)).

property(outcome(0), [zero, v(1-12,0)]).

