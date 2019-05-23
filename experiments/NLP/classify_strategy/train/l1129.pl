% L1129: You and two friends go to a restaurant and order a sandwich.  The menu has 10 types of sandwiches and each of you is equally likely to order any type.  What is the probability that each of you orders a different type? ## Solution= 0.72

group(2-7).
size(2-7, 10).

given(exactly(1, 2-7, v(2-7,4))).
given(exactly(1, 2-7, v(2-7,5))).
given(exactly(1, 2-7, v(2-7,9))).
given(exactly(1, 2-7, v(2-7,2))).
given(exactly(1, 2-7, v(2-7,6))).
given(exactly(1, 2-7, v(2-7,1))).
given(exactly(1, 2-7, v(2-7,8))).
given(exactly(1, 2-7, v(2-7,3))).
given(exactly(1, 2-7, v(2-7,7))).
given(exactly(1, 2-7, v(2-7,0))).

take_wr(2-7, 3-9, 3).


probability(all_diff(3-9,outcome(0))).

property(outcome(0), [v(2-7,3), v(2-7,8), v(2-7,9), v(2-7,4), v(2-7,5), v(2-7,6), v(2-7,7), v(2-7,0), v(2-7,1), v(2-7,2)]).

