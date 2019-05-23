% H694: Among persons donating blood to a clinic, 85 percent have Rh + blood.  Six people donate blood at the clinic on a particular day.  Find the probability that at most four of the six have Rh + blood. ## Solution= 0.2235157

group(1-4).

given(exactly(rel(85/100,1-4), 1-4, rh)).

take_wr(1-4, 1-2, 6).


probability(atmost(4, 1-2, rh)).

property(outcome(0), [rh]).

