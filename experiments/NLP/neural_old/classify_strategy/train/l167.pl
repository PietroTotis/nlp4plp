% L167: Some airplane companies allow for that some of their passengers who have booked a ticket do not show up at take off.  Therefore, the airplane companies possibly use to overbook.  We assume in the following that each passenger has the probability of 1/10 for not showing up and that this happens independently of the other passengers.  Company A always sells 10 tickets to its small airplane of 9 seats.  Find the probability that company A at take off must reject one passenger. ## Solution= 0.34867844

group(3-8).

given(exactly(rel(1/10,3-8), 3-8, not)).

take_wr(3-8, 3-16, 10).


probability(all(3-16, not(not))).

property(outcome(0), [not]).

