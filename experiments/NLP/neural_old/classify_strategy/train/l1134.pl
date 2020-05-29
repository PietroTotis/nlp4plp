% L1134: On a long flight an airline usually serves a meal.  If there are 2 choices for the meal, what is the probability that all 6 people in the first row choose the same meal assuming choices are made independently? ## Solution= 0.03125

group(2-25).
size(2-25, 2).

given(exactly(1, 2-25, v(2-25,0))).
given(exactly(1, 2-25, v(2-25,1))).

take_wr(2-25, 2-22, 6).


probability(all_same(2-22,outcome(0))).

property(outcome(0), [v(2-25,1), v(2-25,0)]).

