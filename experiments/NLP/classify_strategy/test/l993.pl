% L993: Ten percent of a company 's life insurance policyholders are smokers.  The rest are nonsmokers.  For each nonsmoker, the probability of dying during the year is 0.01.  For each smoker, the probability of dying during the year is 0.05.  Given that a policyholder has died, what is the probability that the policyholder was a smoker? ## Solution= 0.35714286

group(1-9).

given(exactly(rel(10/100, 1-9), 1-9, smoker)).
given(exactly(rel(0.01, 1-9, nonsmoker), 1-9, and(die, nonsmoker))).
given(exactly(rel(0.05, 1-9, smoker), 1-9, and(die, smoker))).
given(exactly(rel(0.9, 1-9), 1-9, nonsmoker)).

take(1-9, 5-4, 1).
observe(all(5-4, die)).

probability(all(5-4, smoker)).

property(smoker, [smoker, nonsmoker]).
property(dying, [die]).

