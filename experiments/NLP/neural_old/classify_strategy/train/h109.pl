% H109: Suppose 0.01 percent of the population have a rare genetic disorder.  A test is designed which can detect the condition, if it is present, with 95 percent probability.  The test gives the occasional false positive reading amongst people without the disorder, with a probability of 0.05 percent.  Find the probability that a person has the disorder given that the result of the test is positive. ## Solution= 0.15967728

group(1-6).

given(exactly(rel(95/100, 1-6, have), 1-6, and(have, positive))).
given(exactly(u, 1-6, without)).
given(exactly(rel(0.01/100, 1-6), 1-6, have)).
given(exactly(rel(0.05/100, 1-6, without), 1-6, and(positive, without))).

take(1-6, 4-6, 1).
observe(all(4-6, positive)).

probability(all(4-6, have)).

property(test_result, [positive]).
property(disease, [without, have]).

