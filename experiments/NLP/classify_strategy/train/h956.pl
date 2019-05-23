% H956: Suppose 0.1 percent of the population is infected with a certain disease.  On a medical test for the disease, 98 percent of those infected give a positive result while 1 percent of those not infected give a positive result.  If a randomly chosen person is tested and gives a positive result, what is the probability the person has the disease? ## Solution= 0.089334548769371

group(1-6).

given(exactly(u, 1-6, not)).
given(exactly(rel(98/100, 1-6, infect), 1-6, and(infect, positive))).
given(exactly(rel(1/100, 1-6, not), 1-6, and(not, positive))).
given(exactly(rel(0.1/100, 1-6), 1-6, infect)).

take(1-6, 3-5, 1).
observe(all(3-5, positive)).

probability(all(3-5, infect)).

property(test, [positive]).
property(disease, [not, infect]).

