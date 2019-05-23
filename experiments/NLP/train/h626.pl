% H626: A student knows how to do 15 out of the 20 core problems for a given chapter.  If the TA chooses 3 of the core problems at random for a quiz, what is the probability that the student knows how to do exactly 2 of them? ## Solution= 35/76

group(1-13).
size(1-13, 20).

given(exactly(15, 1-13, know)).

take(1-13, 2-9, 3).

probability(exactly(2, 2-9, know)).

property(property, [know]).

