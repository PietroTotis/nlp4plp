% M676: A biology instructor gives her class a list of eight study problems, from which she will select five to be answered on an exam.  A student knows how to solve six of the problems.  Find the probability that the student will be able to answer all five questions on the exam. ## Solution= 0.107142857142857

group(1-12).
size(1-12, 8).

given(exactly(6, 1-12, solve)).

take(1-12, 1-19, 5).

probability(all(1-19, solve)).

property(property, [solve]).

