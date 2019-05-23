% L1009: 35 percent of visits to a primary care physicians, PCP, office results in neither lab work nor referral to a specialist.  Of those coming to a PCPs office, 30 percent are referred to specialists and 40 percent require lab work.  What percentage of visit to a PCPs office results in both lab work and referral to a specialist? ## Solution= 0.05

group(1-4).

given(exactly(rel(30/100, 1-4), 1-4, specialist)).
given(exactly(rel(35/100, 1-4), 1-4, and(neither, nor))).
given(exactly(rel(40/100, 1-4), 1-4, work)).

take(1-4, 3-2, 1).

probability(and(all(3-2, work), all(3-2, specialist))).

property(specialist, [specialist, nor]).
property(lab_work, [neither, work]).

