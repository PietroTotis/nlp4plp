% H64: An insurance company writes policies for a large number of newly-licensed drivers each year.  Suppose 40 percent of these are low-risk drivers, 40 percent are moderate risk, and 20 percent are high risk.  The company has no way to know which group any individual driver falls in when it writes the policies.  None of the low-risk drivers will have an at-fault accident in the next year, but 10 percent of the moderate-risk and 20 percent of the high-risk drivers will have such an accident.  If a driver has an at-fault accident in the next year, what is the probability that he or she is high-risk? ## Solution= .5

group(1-12).

given(exactly(rel(40/100, 1-12), 1-12, lowrisk)).
given(exactly(rel(40/100, 1-12), 1-12, moderate)).
given(exactly(rel(20/100, 1-12), 1-12, highrisk)).

given(exactly(rel(1e-12, 1-12, lowrisk), 1-12, and(atfault, lowrisk))).
given(exactly(rel(10/100, 1-12, moderate), 1-12, and(atfault, moderate))).
given(exactly(rel(20/100, 1-12, highrisk), 1-12, and(atfault, highrisk))).

take(1-12, 5-3, 1).
observe(all(5-3, atfault)).

probability(all(5-3, highrisk)).

property(fault, [atfault]).
property(risk_level, [moderate, highrisk, lowrisk]).

