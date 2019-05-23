% L245: A system is made up of three independent components.  It operates if at least two of the three components operate.  If the reliability of each component is equal to 0.95, what is the reliability of the system? ## Solution= 0.99275

group(1-9).

given(exactly(rel(0.95,1-9), 1-9, reliability)).

take_wr(1-9, 2-2, 3).


probability(atleast(2, 2-2, reliability)).

property(outcome(0), [reliability]).

