% H794: The probability is 1 percent that an electrical connector that is kept dry fails during the warranty period of a portable computer.  If the connector is ever wet, the probability of a failure during the warranty period is 5 percent.  If 90 percent of the connectors are kept dry and 10 percent are wet, what proportion of connectors fail during the warranty period? ## Solution= .014

group(3-6).

given(exactly(rel(5/100, 3-6, wet), 3-6, and(fail, wet))).
given(exactly(rel(90/100, 3-6), 3-6, dry)).
given(exactly(rel(1/100, 3-6, dry), 3-6, and(dry, fail))).
given(exactly(rel(10/100, 3-6), 3-6, wet)).

take(3-6, 3-17, 1).

probability(all(3-17, fail)).

property(property, [fail]).
property(wet, [dry, wet]).

