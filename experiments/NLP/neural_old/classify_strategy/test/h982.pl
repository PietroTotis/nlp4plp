% H982: The probability of being able to log on a computer system from a remote terminal during a busy period is 0.7.  Suppose that 10 independent attempts are made.  Find the probability that you can log on in 5 or more attempts. ## Solution= 0.95265101

group(1-11).

given(exactly(rel(.7,1-11), 1-11, log)).

take_wr(1-11, 2-5, 10).


probability(atleast(5, 2-5, log)).

property(outcome(0), [log]).

