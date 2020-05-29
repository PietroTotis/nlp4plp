% H150: Two fair dice are rolled.  What is the conditional probability that at least one lands on 6 given that the dice land on different numbers? ## Solution= 1/3

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, v(1-3,3))).
given(exactly(1, 1-3, v(1-3,2))).
given(exactly(1, 1-3, v(1-3,1))).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, v(1-3,4))).
given(exactly(1, 1-3, v(1-3,0))).

take_wr(1-3, 1-5, 2).
observe(all_diff(1-5,outcome(0))).


probability(atleast(1, 1-5, 6)).

property(outcome(0), [v(1-3,4), v(1-3,3), v(1-3,2), v(1-3,1), v(1-3,0), 6]).

