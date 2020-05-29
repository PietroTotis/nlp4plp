% L918: Sun Life Insurance company issues standard, preferred and ultra-preferred policies.  Among the company 's policy holders of a certain age, 50 are standard with the probability of 0.01 dying in the next year, 30 are preferred with a probability of 0.008 of dying in the next year and 20 are ultra-preferred with a probability of 0.007 of dying in the next year.  If a policy holder of that age dies in the next year, what is the probability of the decreased being a preferred policy holder? ## Solution= 3/11

group(2-6).

given(exactly(rel(0.01, 2-6, standard), 2-6, and(die, standard))).
given(exactly(30, 2-6, prefer)).
given(exactly(50, 2-6, standard)).
given(exactly(rel(0.008, 2-6, prefer), 2-6, and(die, prefer))).
given(exactly(20, 2-6, ultra-preferred)).
given(exactly(rel(0.007, 2-6, ultra-preferred), 2-6, and(die, ultra-preferred))).

take(2-6, 3-4, 1).
observe(all(3-4, die)).

probability(all(3-4, prefer)).

property(policy, [prefer, ultra-preferred, standard]).
property(dying, [die]).

