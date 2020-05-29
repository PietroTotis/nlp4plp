% H421: There is a 30 percent chance that it rains on any particular day.  What is the probability that there is at least one rainy day within a period of 7 days? ## Solution= 1-((7/10)^7)

group(1-13).

given(exactly(rel(30/100,1-13), 1-13, rain)).

take_wr(1-13, 2-18, 7).


probability(atleast(1, 2-18, rain)).

property(outcome(0), [rain]).

