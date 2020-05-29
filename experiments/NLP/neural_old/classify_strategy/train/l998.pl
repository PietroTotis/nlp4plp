% L998: An insurance company issues life insurance policies in three separate categories: standard, preferred, and ultra-preferred.  Of the company 's policyholders, 50 percent are standard, 40 percent are preferred, and 10 percent are ultra-preferred.  Each standard policyholder has probability 0.010 of dying in the next year, each preferred policyholder has probability 0.005 of dying in the next year and each ultra-preferred policyholder has probability 0.001 of dying in the next year.  A policyholder dies in the next year.  What is the probability that the deceased policyholder was ultra-preferred? ## Solution= 0.014084507

group(2-5).

given(exactly(rel(10/100, 2-5), 2-5, ultra-preferred)).
given(exactly(rel(50/100, 2-5), 2-5, standard)).
given(exactly(rel(40/100, 2-5), 2-5, prefer)).
given(exactly(rel(0.005, 2-5, prefer), 2-5, and(die, prefer))).
given(exactly(rel(0.001, 2-5, ultra-preferred), 2-5, and(die, ultra-preferred))).
given(exactly(rel(0.010, 2-5, standard), 2-5, and(die, standard))).

take(2-5, 4-2, 1).
observe(all(4-2, die)).

probability(all(4-2, ultra-preferred)).

property(category, [prefer, ultra-preferred, standard]).
property(dying, [die]).

