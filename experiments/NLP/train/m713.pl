% M713: An instructor gives a class a list of 12 study problems, from which eight will be selected to construct an exam.  A student knows how to solve 10 of the problems.  Find the probability that the student will be able to answer at least seven questions on the exam? ## Solution= 0.575757575757576

group(1-11).
size(1-11, 12).

given(exactly(10, 1-11, solve)).

take(1-11, 1-15, 8).

probability(atleast(7, 1-15, solve)).

property(property, [solve]).

