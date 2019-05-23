% L999: An insurance company believes that auto drivers can be divided into two categories: those who are a high risk for accidents and those who are low risk.  Past statistics show that the probability for a high risk driver to have an accident within a one-year period is 0.4, whereas this probability is 0.2 for a low risk driver.  If we assume that 30 percent of the population is high risk, what is the probability that a new policyholder will have an accident within a year of purchasing a policy? ## Solution= 0.26

group(1-7).

given(exactly(rel(0.2, 1-7, low), 1-7, and(accident, low))).
given(exactly(rel(30/100, 1-7), 1-7, high)).
given(exactly(rel(70/100, 1-7), 1-7, low)).
given(exactly(rel(0.4, 1-7, high), 1-7, and(accident, high))).

take(1-7, 3-21, 1).

probability(all(3-21, accident)).

property(accident, [accident]).
property(risk, [high, low]).

