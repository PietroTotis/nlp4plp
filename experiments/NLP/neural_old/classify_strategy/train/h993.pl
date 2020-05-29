% H993: There are 20 Pokemon hiding on the way to the Alma.  There is a 2 percent chance that a pokemon appears.  What is the probability that 4 or more pokemon appear? ## Solution= 0.000599678896246958

group(2-9).

given(exactly(rel(2/100,2-9), 2-9, appear)).

take_wr(2-9, 1-4, 20).


probability(atleast(4, 1-4, appear)).

property(outcome(0), [appear]).

