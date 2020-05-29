% H121: Last night, Christina counted the number of instant messages she received.  She received four from Kyle, eleven from Christina, five from Steven, nine from Kevin, and twenty-four from her best friend and very chatty Natalie.  She turned on her computer.  What is the probability that the first instant message she receives is from Natalie? ## Solution= 24/53

group(1-10).

given(exactly(9, 1-10, kevin)).
given(exactly(5, 1-10, steven)).
given(exactly(11, 1-10, christina)).
given(exactly(4, 1-10, kyle)).
given(exactly(24, 1-10, natalie)).

take(1-10, 4-9, 1).

probability(all(4-9, natalie)).

property(property, [christina, natalie, kyle, kevin, steven]).

