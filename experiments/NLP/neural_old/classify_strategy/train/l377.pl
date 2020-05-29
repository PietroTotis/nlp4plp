% L377: A smuggler is approaching a border crossing with two open gates.  At gate 1 is a guard who catches 70 percent of all the smugglers that come to his gate.  At gate 2 is a guard who catches 90 percent of all smugglers that come to his gate.  The smuggler flips a fair coin to decide which gate to choose.  The smuggler gets caught.  What is the probability that he chose gate 1? ## Solution= 7/16

group(1-11).
size(1-11, 2).

given(exactly(rel(70/100, 1-11, 1), 1-11, and(1, catch))).
given(exactly(rel(90/100, 1-11, 2), 1-11, and(2, catch))).
given(exactly(1, 1-11, 2)).
given(exactly(1, 1-11, 1)).

take(1-11, 1-2, 1).
observe(all(1-2, catch)).

probability(all(1-2, 1)).

property(gate, [1, 2]).
property(success, [catch]).

