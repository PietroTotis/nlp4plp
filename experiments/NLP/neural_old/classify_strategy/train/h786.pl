% H786: A baseball player gets a hit 30 percent of the time.  Out of the next five times at bat, what is the probability of no hits? ## Solution= 0.16807

group(2-8).

given(exactly(rel(30/100,2-8), 2-8, hit)).

take_wr(2-8, 1-3, 5).


probability(all(1-3, not(hit))).

property(outcome(0), [hit]).

