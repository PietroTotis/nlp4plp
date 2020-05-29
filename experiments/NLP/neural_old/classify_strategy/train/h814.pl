% H814: It is known that two defective copies of a commercial software program were erroneously sent to a shipping lot that has now a total of 75 copies of the program.  A sample of copies will be selected from the lot without replacement.  If three copies of the software are inspected, determine the probability that exactly one of the defective copies will be found. ## Solution= 0.0778378378378378

group(1-27).
size(1-27, 75).

given(exactly(2, 1-27, defective)).

take(1-27, 3-3, 3).

probability(exactly(1, 3-3, defective)).

property(property, [defective]).

