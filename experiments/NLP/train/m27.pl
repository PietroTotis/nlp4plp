% M27: In a class, 40 percent of the students study math and science.  60 percent of the students study math.  What is the probability of a student studying science given he/she is already studying math? ## Solution= 2/3

group(1-9).

given(exactly(rel(60/100, 1-9), 1-9, math)).
given(exactly(rel(40/100, 1-9), 1-9, and(math, science))).

take(1-9, 3-7, 1).
observe(all(3-7, math)).

probability(all(3-7, science)).

property(science, [science]).
property(math, [math]).

