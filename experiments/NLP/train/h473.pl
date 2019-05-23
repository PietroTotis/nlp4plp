% H473: A computer system has ten similar modules.  The circuit has redundancy which ensures the system operates if any eight or more of the units are operative.  Units fail independently, and the probability is 0.93 that any unit will survive between maintenance periods.  What is the probability of no system failure due to these units? ## Solution= 0.97165785

group(3-12).

given(exactly(rel(.93,3-12), 3-12, survive)).

take_wr(3-12, 1-3, 10).


probability(atleast(8, 1-3, survive)).

property(outcome(0), [survive]).

