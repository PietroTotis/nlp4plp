% L995: A study was conducted about the excessive amounts of pollutants emitted by cars in a certain town.  The study found that 25 percent of all cars emit excessive amounts of pollutants.  The probability for a car emiting excessive amounts of pollutants to fail the town 's vehicular emission test is found to be 0.99.  Cars who do not emit excessive amounts of pollutants have a probability of 0.17 to fail to emission test.  A car is selected at random.  What is the probability that the car emits excessive amounts of pollutants given that it failed the emission test? ## Solution= 0.66

group(1-13).

given(exactly(rel(0.17, 1-13, not), 1-13, and(fail, not))).
given(exactly(rel(25/100, 1-13), 1-13, excessive)).
given(exactly(rel(0.99, 1-13, excessive), 1-13, and(excessive, fail))).
given(exactly(rel(0.75, 1-13), 1-13, not)).

take(1-13, 5-2, 1).
observe(all(5-2, fail)).

probability(all(5-2, excessive)).

property(test, [fail]).
property(pollutants, [not, excessive]).

