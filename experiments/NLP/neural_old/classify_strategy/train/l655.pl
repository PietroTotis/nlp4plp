% L655: On New Year 's Eve, the probability of a person driving while intoxicated is 0.32, the probability of a person having a driving accident is 0.09, and the probability of a person having a driving accident while intoxicated is 0.06.  What is the probability of a person driving while intoxicated or having a driving accident? ## Solution= 0.35

group(persons).

given(exactly(rel(0.32, persons), persons, intoxicate)).
given(exactly(rel(0.09, persons), persons, accident)).
given(exactly(rel(0.06, persons), persons, and(accident, intoxicate))).

take(persons, 2-4, 1).

probability(all(2-4, or(intoxicate, accident))).

property(intoxicated, [intoxicate]).
property(accident, [accident]).

