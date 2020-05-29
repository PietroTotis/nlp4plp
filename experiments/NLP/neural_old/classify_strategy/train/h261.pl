% H261: The probability of a man hitting a target is 1/4.  If he fires 7 times, what is the probability of his hitting the target at least twice? ## Solution= 0.55505371

group(1-6).

given(exactly(rel(1/4,1-6), 1-6, hit)).

take_wr(1-6, 2-3, 7).


probability(atleast(2, 2-3, hit)).

property(outcome(0), [hit]).

