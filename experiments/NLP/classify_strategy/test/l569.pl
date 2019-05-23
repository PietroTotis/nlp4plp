% L569: A group of volleyball players consists of four grade-11 students and six grade 12-students.  If six players are chosen at random to start a match, what is the probability that three will be from each grade? ## Solution= 0.380952380952381

group(1-2).

given(exactly(6, 1-2, grade12)).
given(exactly(4, 1-2, grade11)).

take(1-2, 2-3, 6).

probability(and(exactly(3, 2-3, grade11), exactly(3, 2-3, grade12))).

property(property, [grade11, grade12]).

