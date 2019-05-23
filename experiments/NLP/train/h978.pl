% H978: A red die is fair and a green die is loaded so that the probability it comes up 6 is 1/10.  What is the probability of at least 30 sixes in 100 rolls of the red die? ## Solution= ?

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, v(1-3,3))).
given(exactly(1, 1-3, v(1-3,2))).
given(exactly(1, 1-3, v(1-3,1))).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, v(1-3,4))).
given(exactly(1, 1-3, v(1-3,0))).

take_wr(1-3, 2-12, 100).


probability(atleast(30, 2-12, 6)).

property(outcome(0), [v(1-3,4), v(1-3,3), v(1-3,2), v(1-3,1), v(1-3,0), 6]).

