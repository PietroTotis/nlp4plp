% L898: Two students from Class A are transferred into Class B. Before the transfer, Class A had 15 Math Students, 4 Physics Students and 1 Chemistry Student.  Class B had 20 Physics students, and 5 Math students.  What is the probability of finding a math student in class B after the transfer? ## Solution= 0.24074074074074076

group(1-9).

group(2-1).

group(1-15).

given(exactly(15, 1-15, math)).
given(exactly(1, 1-15, chemistry)).
given(exactly(20, 2-1, physics)).
given(exactly(5, 2-1, math)).
given(exactly(4, 1-15, physics)).

take(1-15, 1-2, 2).
take(1-9, 3-9, 1).

union(1-9, [1-2, 2-1]).
probability(all(3-9, math)).

property(student, [chemistry, physics, math]).

