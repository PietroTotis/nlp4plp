% H364: Chuck is going on a four-day vacation.  The probability for a rain is 40 percent on Friday, 30 percent on Saturday, 60 percent on Sunday, and 50 percent on Monday.  What is the probability that Chuck has a rain-free weekend ## Solution= 0.084

group(2-15).

given(exactly(rel(30/100,2-15), 2-15, rain)).
group(2-10).

given(exactly(rel(40/100,2-10), 2-10, rain)).
group(2-26).

given(exactly(rel(50/100,2-26), 2-26, rain)).
group(2-20).

given(exactly(rel(60/100,2-20), 2-20, rain)).

take_wr(2-26, 3-10-0, 1).
take_wr(2-20, 3-10-1, 1).
take_wr(2-10, 3-10-2, 1).
take_wr(2-15, 3-10-3, 1).
union(3-10, [3-10-0,3-10-1,3-10-2,3-10-3]).


probability(all(3-10, not(rain))).

property(outcome(0), [rain]).

