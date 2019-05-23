% L469: Identical computer components are shipped in boxes of 5.  About 15 percent of components have defects.  Boxes are tested in a random order.  What is the probability that a randomly selected box has only non-defective components? ## Solution= 0.4437053125

group(1-3).

given(exactly(rel(15/100, 1-3), 1-3, defect)).

take(1-3, 4-9, 5).

probability(none(4-9, defect)).

property(property, [defect]).

