% L27: 100 cars are entered for a road-worthiness test which is in two parts, mechanical and electrical.  A car passes only if it passes both parts.  Half the cars pass the electrical test and 62 pass the mechanical.  15 pass the electrical but fail the mechanical test.  Find the probability that a car fails on one test only. ## Solution= 42/100

group(1-2).
size(1-2, 100).

given(exactly(62, 1-2, mechanical)).
given(exactly(rel(1/2, 1-2), 1-2, electrical)).
given(exactly(15, 1-2, and(electrical, fail))).

take(1-2, 5-6, 1).

probability(all(5-6, and(or(not(electrical), fail), not(and(not(electrical), fail))))).

property(electrical, [electrical]).
property(mechanical, [fail, mechanical]).

