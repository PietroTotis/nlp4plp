% H647: Two students A and B are both registered for a certain course.  Assume that student A attends class 80 percent of the time, student B attends class 60 percent of the time, and the absences of the two students are independent.  What is the probability that at least one of the two students will be in class on a given day? ## Solution= .92

group(1-3).

given(exactly(rel(80/100,1-3), 1-3, attend)).
group(1-5).

given(exactly(rel(60/100,1-5), 1-5, attend)).

take_wr(1-3, 2-5-0, 1).
take_wr(1-5, 2-5-1, 1).
union(2-5, [2-5-0,2-5-1]).


probability(atleast(1, 2-5, attend)).

property(outcome(0), [attend]).

