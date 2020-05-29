% H1007: The average employee snoozes their alarm in the morning 10 percent of the time.  There are 59 employees.  In a sample of 14 of them, find the probability that exactly 4 snoozed their alarm. ## Solution= 0.03490271185401

group(1-3).

given(exactly(rel(10/100,1-3), 1-3, snooze)).

take_wr(1-3, 3-3, 14).


probability(exactly(4, 3-3, snooze)).

property(outcome(0), [snooze]).

