% M162: There are 210 students in a twelfth grade high school class.  90 of these students have at least one sister and 105 have at least one brother.  Out of these, there are 45 who have at least one sister and one brother.  What is the conditional probability that a randomly selected student in the class has a brother given that he or she has a sister? ## Solution= 1/2

group(1-11).
size(1-11, 210).

given(exactly(105, 1-11, brother)).
given(exactly(90, 1-11, sister)).
given(exactly(45, 1-11, and(brother, sister))).

take(1-11, 4-10, 1).
observe(all(4-10, sister)).

probability(all(4-10, brother)).

property(sister, [sister]).
property(brother, [brother]).

