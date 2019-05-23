% H153: Ninety-eight percent of all babies survive delivery.  However, 15 percent of all births involve C sections, and when a C section is performed, the baby survives 96 percent of the time.  If a randomly chosen pregnant woman does not have a C section, what is the probability that her baby survives? ## Solution= 0.983529411764706

group(1-5).
given(all(1-5, delivery)).

given(exactly(rel(15/100, 1-5), 1-5, c)).
given(exactly(rel(85/100, 1-5), 1-5, delivery)).
given(exactly(rel(98/100, 1-5), 1-5, survive)).
given(exactly(rel(96/100, 1-5, c), 1-5, and(c, survive))).

take(1-5, 3-20, 1).
observe(none(3-20, c)).

probability(all(3-20, survive)).

property(birth_method, [delivery, c]).
property(survival, [survive]).

