% L966: Bev can either take a course in computers or in chemistry.  If Bev takes the computer course, then she will receive an A grade with probability 1/2 ; if she takes the chemistry course then she will receive an A grade with probability 1/3.  Bev decides to base her decision on the flip of a fair coin.  What is the probability that Bev will get an A in chemistry? ## Solution= 1/6

group(courses).

given(exactly(rel(1/3, courses, chemistry), courses, and(a, chemistry))).
given(exactly(rel(1/2, courses), courses, chemistry)).
given(exactly(rel(1/2, courses, computer), courses, and(a, computer))).
given(exactly(rel(1/2, courses), courses, computer)).

take(courses, 4-4, 1).

probability(and(all(4-4, a), all(4-4, chemistry))).

property(grade, [a]).
property(course, [computer, chemistry]).

