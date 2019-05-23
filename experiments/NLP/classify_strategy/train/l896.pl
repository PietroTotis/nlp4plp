% L896: A class of 20 boys and 10 girls has 15 Math majors and 15 Physics students.  What is the probability of picking a student who is both a boy and a physics major? ## Solution= 1/3

group(1-2).

given(exactly(10, 1-2, girl)).
given(exactly(20, 1-2, boy)).
given(exactly(15, 1-2, physics)).
given(exactly(15, 1-2, math)).

take(1-2, 2-8, 1).

probability(and(all(2-8, boy), all(2-8, physics))).

property(gender, [boy, girl]).
property(major, [physics, math]).

