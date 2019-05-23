% M695: In a class of 72 students, 44 are girls and, of these, 12 are going to college.  Of the 28 boys in the class, 9 are going to college.  A student is selected at random from the class.  What is the probability that the person chosen is going to college? ## Solution= 0.291666666

group(1-3).
size(1-3, 72).

given(exactly(9, 1-3, and(boy, college))).
given(exactly(12, 1-3, and(college, girl))).
given(exactly(28, 1-3, boy)).
given(exactly(44, 1-3, girl)).

take(1-3, 3-2, 1).

probability(all(3-2, college)).

property(decision, [college]).
property(sex, [boy, girl]).

