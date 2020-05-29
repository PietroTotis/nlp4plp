% H977: A red die is fair and a green die is loaded so that the probability it comes up 6 is 1/10.  What is the probability of rolling exactly 3 sixes in 3 rolls with the red die? ## Solution= 0.00462962962962963

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, v(1-3,3))).
given(exactly(1, 1-3, v(1-3,2))).
given(exactly(1, 1-3, v(1-3,1))).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, v(1-3,4))).
given(exactly(1, 1-3, v(1-3,0))).

take_wr(1-3, 2-12, 3).


probability(all(2-12, 6)).

property(outcome(0), [v(1-3,4), v(1-3,3), v(1-3,2), v(1-3,1), v(1-3,0), 6]).

