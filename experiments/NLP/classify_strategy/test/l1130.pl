% L1130: The owner of a one-man lawn mowing business owns three old and unreliable riding mowers.  As long as one of the three is working he can stay productive.  From past experience, one of the mowers is unusable 12 percent of the time, one 6 percent of the time, and one 20 percent of the time.  Find the probability that all three mowers are unusable on a given day. ## Solution= 0.00144

group(3-17).

given(exactly(rel(0.06,3-17), 3-17, unusable)).
group(3-5).

given(exactly(rel(0.12,3-5), 3-5, unusable)).
group(3-25).

given(exactly(rel(0.2,3-25), 3-25, unusable)).

take_wr(3-25, 2-9-0, 1).
take_wr(3-5, 2-9-1, 1).
take_wr(3-17, 2-9-2, 1).
union(2-9, [2-9-0,2-9-1,2-9-2]).


probability(all(2-9, unusable)).

property(outcome(0), [unusable]).

