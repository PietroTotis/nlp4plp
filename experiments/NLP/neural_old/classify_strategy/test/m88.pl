% M88: A problem is given to three students.  The chances of solving it are 1/2 for the first student, 1/3 for the second student and 1/4 for the third student.  What is the probability that the problem will be solved? ## Solution= 3/4

group(2-17).

given(exactly(rel(1/3,2-17), 2-17, solve)).
group(2-11).

given(exactly(rel(1/2,2-11), 2-11, solve)).
group(2-23).

given(exactly(rel(1/4,2-23), 2-23, solve)).

take_wr(2-23, 3-10-0, 1).
take_wr(2-11, 3-10-1, 1).
take_wr(2-17, 3-10-2, 1).
union(3-10, [3-10-0,3-10-1,3-10-2]).


probability(some(3-10, solve)).

property(outcome(0), [solve]).

