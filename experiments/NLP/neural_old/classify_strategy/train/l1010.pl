% L1010: An insurance company estimates that 40 percent of policyholders who have only an auto policy will renew next year and 60 percent of policyholders who have only a homeowners policy will renew next year.  The company estimates that 80 percent of policyholders who have both an auto and a homeowners policy will renew at least one of those policies next year.  Company records show that 65 percent of policyholders have an auto policy, 50 percent of policyholders have a homeowners policy, and 15 percent of policyholders have both an auto and a homeowners policy.  Using the company 's estimates, calculate the percentage of policyholders that will renew at least one policy next year. ## Solution= 0.53

group(3-8).

given(exactly(rel(50/100, 3-8), 3-8, homeowner)).
given(exactly(rel(40/100, 3-8, and(auto, no_home)), 3-8, and(auto, and(no_home, renew)))).
given(exactly(rel(15/100, 3-8), 3-8, and(auto, homeowner))).
given(exactly(u, 3-8, and(homeowner, no_auto))).
given(exactly(rel(80/100, 3-8, and(auto, homeowner)), 3-8, and(auto, and(homeowner, renew)))).
given(exactly(rel(60/100, 3-8, and(homeowner, no_auto)), 3-8, and(homeowner, and(no_auto, renew)))).
given(exactly(u, 3-8, and(auto, no_home))).
given(exactly(rel(65/100, 3-8), 3-8, auto)).

take(3-8, 4-9, 1).

probability(all(4-9, renew)).

property(auto, [auto, no_auto]).
property(renew, [renew]).
property(home, [no_home, homeowner]).

