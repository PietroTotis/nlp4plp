% H785: A baseball player gets a hit 30 percent of the time.  Out of the next five times at bat, what is the probability of exactly one hit? ## Solution= 0.36015

group(2-8).

given(exactly(rel(30/100,2-8), 2-8, hit)).

take_wr(2-8, 1-3, 5).


probability(exactly(1, 1-3, hit)).

property(outcome(0), [hit]).

