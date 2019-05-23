% L984: Marlon, John, and Steve are given the choice for only one topping on their personal size pizza.  There are 10 toppings to choose from.  What is the probability that each of them orders a different topping? ## Solution= 0.72

group(2-4).
size(2-4, 10).

given(exactly(1, 2-4, v(2-4,0))).
given(exactly(1, 2-4, v(2-4,4))).
given(exactly(1, 2-4, v(2-4,3))).
given(exactly(1, 2-4, v(2-4,8))).
given(exactly(1, 2-4, v(2-4,7))).
given(exactly(1, 2-4, v(2-4,6))).
given(exactly(1, 2-4, v(2-4,1))).
given(exactly(1, 2-4, v(2-4,5))).
given(exactly(1, 2-4, v(2-4,2))).
given(exactly(1, 2-4, v(2-4,9))).

take_wr(2-4, 2-6, 3).


probability(all_diff(2-6,outcome(0))).

property(outcome(0), [v(2-4,5), v(2-4,4), v(2-4,9), v(2-4,8), v(2-4,3), v(2-4,2), v(2-4,1), v(2-4,0), v(2-4,7), v(2-4,6)]).

