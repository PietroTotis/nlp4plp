% H38: The local high school has 340 students with an equal number of freshmen, sophomores, juniors, and seniors.  Once a year, one student is selected at random to be the student body president.  What are the odds that the student selected this year will NOT be a freshman? ## Solution= 3/4

group(1-4).
size(1-4, 340).

given(exactly(rel(1/4, 1-4), 1-4, sophomore)).
given(exactly(rel(1/4, 1-4), 1-4, senior)).
given(exactly(rel(1/4, 1-4), 1-4, junior)).
given(exactly(rel(1/4, 1-4), 1-4, freshman)).

take(1-4, 2-6, 1).

probability(none(2-6, freshman)).

property(property, [freshman, senior, junior, sophomore]).

