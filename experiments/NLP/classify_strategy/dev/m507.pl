% M507: You roll three 6 sided dice.  What is the probability that 5 will not appear? ## Solution= 0.578703703703704

group(1-6).
size(1-6, 6).

given(exactly(1, 1-6, v(1-6,1))).
given(exactly(1, 1-6, v(1-6,2))).
given(exactly(1, 1-6, 5)).
given(exactly(1, 1-6, v(1-6,0))).
given(exactly(1, 1-6, v(1-6,4))).
given(exactly(1, 1-6, v(1-6,3))).

take_wr(1-6, 1-2, 3).


probability(all(1-2, not(5))).

property(outcome(0), [v(1-6,2), v(1-6,3), v(1-6,0), v(1-6,1), 5, v(1-6,4)]).

