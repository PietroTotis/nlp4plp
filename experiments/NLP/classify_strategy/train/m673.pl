% M673: In a high school graduating class of 198 students, 43 are on the honor roll.  Of these, 37 are going on to college, and of the other 155 students, 102 are going on to college.  A student is selected at random from the class.  What is the probability that the person chosen is going to college? ## Solution= 0.702020202

group(1-9).
size(1-9, 198).

given(exactly(155, 1-9, other)).
given(exactly(43, 1-9, honor_roll)).
given(exactly(37, 1-9, and(college, honor_roll))).
given(exactly(102, 1-9, and(college, other))).

take(1-9, 3-2, 1).

probability(all(3-2, college)).

property(decision, [college]).
property(property, [honor_roll, other]).

