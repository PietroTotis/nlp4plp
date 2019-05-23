% M161: There are 210 students in a twelfth grade high school class.  90 of these students have at least one sister and 105 have at least one brother.  Out of these, there are 45 who have at least one sister and one brother.  What is the probability that a randomly selected student in the class has a sister and a brother? ## Solution= 3/14

group(1-11).
size(1-11, 210).

given(exactly(105, 1-11, brother)).
given(exactly(90, 1-11, sister)).
given(exactly(45, 1-11, and(brother, sister))).

take(1-11, 4-9, 1).

probability(all(4-9, and(sister, brother))).

property(sister, [sister]).
property(brother, [brother]).

