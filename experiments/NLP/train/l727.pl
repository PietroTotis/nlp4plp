% L727: A survey found that 77 percent of bike riders sometimes ride without a helmet.  If 4 bike riders are randomly selected, find the probability that at least one of the riders does not wear a helmet all the time. ## Solution= 1-0.23^4

group(2-4).

given(exactly(rel(0.77,2-4), 2-4, helmet)).

take_wr(2-4, 2-7, 4).


probability(atleast(1, 2-7, helmet)).

property(outcome(0), [helmet]).

