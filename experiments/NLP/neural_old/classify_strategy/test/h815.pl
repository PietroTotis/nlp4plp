% H815: It is known that two defective copies of a commercial software program were erroneously sent to a shipping lot that has now a total of 75 copies of the program.  A sample of copies will be selected from the lot without replacement.  If three copies of the software are inspected, determine the probability that both defective copies will be found. ## Solution= .00108

group(1-27).
size(1-27, 75).

given(exactly(2, 1-27, defective)).

take(1-27, 3-3, 3).

probability(exactly(2, 3-3, defective)).

property(property, [defective]).

