% L28: 100 cars are entered for a road-worthiness test which is in two parts, mechanical and electrical.  A car passes only if it passes both parts.  Half the cars fail the electrical test and 62 pass the mechanical.  15 pass the electrical but fail the mechanical test.  Find the probability that a car chosen at random given that it has failed, failed the mechanical test only. ## Solution= 3/13

group(1-2).
size(1-2, 100).

given(exactly(62, 1-2, mechanical)).
given(exactly(rel(1/2, 1-2), 1-2, electrical)).
given(exactly(15, 1-2, and(electrical, fail))).

take(1-2, 5-6, 1).
observe(all(5-6, or(fail, not(electrical)))).

probability(all(5-6, and(fail, electrical))).

property(electrical, [electrical]).
property(mechanical, [fail, mechanical]).

