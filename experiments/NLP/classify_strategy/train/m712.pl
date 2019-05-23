% M712: In a high school graduating class of 72 students, 28 are on the honor roll.  Of these, 18 are going on to college, and of the other 44 students, 12 are going on to college.  A student is selected at random from the class.  What is the probability that the person chosen is going to college? ## Solution= 0.416666666666667

group(1-9).
size(1-9, 72).

given(exactly(44, 1-9, other)).
given(exactly(28, 1-9, honor_roll)).
given(exactly(18, 1-9, and(college, honor_roll))).
given(exactly(12, 1-9, and(college, other))).

take(1-9, 3-2, 1).

probability(all(3-2, college)).

property(decision, [college]).
property(type_student, [honor_roll, other]).

