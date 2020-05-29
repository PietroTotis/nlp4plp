% H299: Out of a classroom of 6 boys and 4 girls the teacher picks a president for the student board, a vice president and a secretary.  What is the probability that only girls will be elected? ## Solution= 1/30

group(1-4).

given(exactly(6, 1-4, boy)).
given(exactly(4, 1-4, girl)).

take(1-4, 1-19, 3).

probability(all(1-19, girl)).

property(property, [boy, girl]).

