% L1002: Passengers in Little Rock Airport rent cars from three rental companies: 60 percent from Avis, 30 percent from Enterprise and 10 percent from National.  Past statistics show that 9 percent of the cars from Avis, 20 percent of the cars from Enterprise and 6 percent of the cars from National need oil change.  If a rental car delivered to a passenger needs an oil change, what is the probability that it came from Enterprise? ## Solution= 0.5

group(1-7).

given(exactly(rel(9/100, 1-7, avi), 1-7, and(avi, oil))).
given(exactly(rel(10/100, 1-7), 1-7, national)).
given(exactly(rel(6/100, 1-7, national), 1-7, and(national, oil))).
given(exactly(rel(60/100, 1-7), 1-7, avi)).
given(exactly(rel(20/100, 1-7, enterprise), 1-7, and(enterprise, oil))).
given(exactly(rel(30/100, 1-7), 1-7, enterprise)).

take(1-7, 3-4, 1).
observe(all(3-4, oil)).

probability(all(3-4, enterprise)).

property(company, [national, avi, enterprise]).
property(oil, [oil]).

