% H920: In the United States, the overall chance that a baby survives delivery is 99.3 percent.  For the 15 percent that are delivered by cesarean section, the chance of survival is 98.7 percent.  If a baby is not delivered by cesarean section, what is its survival probability? ## Solution= 0.994058823529412

group(1-11).

given(exactly(rel(0.987, 1-11, cesarean), 1-11, and(cesarean, survive))).
given(exactly(rel(0.993, 1-11), 1-11, survive)).
given(exactly(rel(15/100, 1-11), 1-11, cesarean)).

take(1-11, 3-3, 1).
observe(none(3-3, cesarean)).

probability(all(3-3, survive)).

property(s, [survive]).
property(c, [cesarean]).

