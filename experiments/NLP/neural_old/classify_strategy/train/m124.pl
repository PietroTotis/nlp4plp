% M124: 120 students in a fifth grade class are surveyed about what kinds of pets they have.  Of the 120 students, 30 have a goldfish, 40 have a mouse, and 10 have a goldfish and a mouse.  What is the probability that a student in the class has a goldfish? ## Solution= 1/4

group(1-2).
size(1-2, 120).

given(exactly(30, 1-2, goldfish)).
given(exactly(40, 1-2, mouse)).
given(exactly(10, 1-2, and(goldfish, mouse))).

take(1-2, 3-7, 1).

probability(all(3-7, goldfish)).

property(goldfish, [goldfish]).
property(mouse, [mouse]).

