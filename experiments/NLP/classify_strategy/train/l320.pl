% L320: At the college entrance examination each candidate is admitted or rejected according to whether he has passed or failed the test.  Of the candidates who are really capable, 80 percent pass the test and of the incapable, 25 percent pass the test.  Given that 40 percent of the candidates are really capable, find the proportion of capable college students. ## Solution= 0.32

group(3-7).

given(exactly(rel(60/100, 3-7), 3-7, incapable)).
given(exactly(rel(80/100, 3-7, capable), 3-7, and(capable, pass))).
given(exactly(rel(25/100, 3-7, incapable), 3-7, and(incapable, pass))).
given(exactly(rel(40/100, 3-7), 3-7, capable)).

take(3-7, 3-14, 1).

probability(and(all(3-14, capable), all(3-14, pass))).

property(capability, [incapable, capable]).
property(test, [pass]).

