% H936: Hospital patients with a certain disease are known to recover with probability 1/2 if they do not receive a certain drug.  The probability of recovery is 3/4 if the drug is used.  Of 100 patients, 10 are selected to receive the drug.  If a patient recovers, what is the probability the drug was used? ## Solution= 0.142857142857143

group(3-3).
size(3-3, 100).

given(exactly(rel(1/2, 3-3, not), 3-3, and(not, recover))).
given(exactly(rel(3/4, 3-3, drug), 3-3, and(drug, recover))).
given(exactly(10, 3-3, drug)).
given(exactly(u, 3-3, not)).

take(3-3, 4-3, 1).
observe(all(4-3, recover)).

probability(all(4-3, drug)).

property(property, [recover]).
property(drug, [not, drug]).

