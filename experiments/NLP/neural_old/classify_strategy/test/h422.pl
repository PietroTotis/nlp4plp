% H422: There is a 30 percent chance that it rains on any particular day.  Given that there is at least one rainy day in a week, what is the probability that there are at least two rainy days in a week? ## Solution= 0.730764389785731

group(1-9).

given(exactly(rel(30/100,1-9), 1-9, rain)).

take_wr(1-9, 2-12, 7).
observe(atleast(1, 2-12, rain)).


probability(atleast(2, 2-12, rain)).

property(outcome(0), [rain]).

