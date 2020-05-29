% H575: A marksman finds that, on the average, he hits the target 4 times out of 5.  If he fires 4 shots, what is the probability of more than 2 hits? ## Solution= .8192

group(1-11).

given(exactly(rel(4/5,1-11), 1-11, hit)).

take_wr(1-11, 2-5, 4).


probability(more_than(2, 2-5, hit)).

property(outcome(0), [hit]).

