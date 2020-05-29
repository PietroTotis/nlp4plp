% L1146: In a group of health insurance policyholders, 20 percent have high blood pressure and 30 percent have high cholesterol.  Of the policyholders with high blood pressure, 25 percent have high cholesterol.  A policyholder is randomly selected from the group.  Calculate the probability that a policyholder has high blood pressure, given that the policyholder has high cholesterol. ## Solution= 0.16666667

group(1-7).

given(exactly(rel(20/100, 1-7), 1-7, pressure)).
given(exactly(rel(30/100, 1-7), 1-7, cholesterol)).
given(exactly(rel(25/100, 1-7, pressure), 1-7, and(cholesterol, pressure))).

take(1-7, 3-2, 1).
observe(all(3-2, cholesterol)).

probability(all(3-2, pressure)).

property(pressure, [pressure]).
property(cholesterol, [cholesterol]).

