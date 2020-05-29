% H693: Among persons donating blood to a clinic, 85 percent have Rh + blood.  Six people donate blood at the clinic on a particular day.  Find the probability that at least one of the six does not have the Rh factor. ## Solution= 0.62285048

group(1-4).

given(exactly(rel(85/100,1-4), 1-4, rh)).

take_wr(1-4, 1-2, 6).


probability(atleast(1, 1-2, not(rh))).

property(outcome(0), [rh]).

