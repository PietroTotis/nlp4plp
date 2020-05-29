% L1095: In a certain town in the United States, 40 percent of the population are liberals and 60 percent are conservatives.  The city council has proposed selling alcohol illegal in the town.  It is known that 75 percent of conservatives and 30 percent of liberals support this measure.  If a randomly selected person does not support the measure, what is the probability that he or she is a liberal? ## Solution= 28/43

group(1-14).

given(exactly(rel(75/100, 1-14, conservative), 1-14, and(conservative, support))).
given(exactly(rel(30/100, 1-14, liberal), 1-14, and(liberal, support))).
given(exactly(rel(40/100, 1-14), 1-14, liberal)).
given(exactly(rel(60/100, 1-14), 1-14, conservative)).

take(1-14, 4-5, 1).
observe(none(4-5, support)).

probability(all(4-5, liberal)).

property(ideology, [liberal, conservative]).
property(support, [support]).

