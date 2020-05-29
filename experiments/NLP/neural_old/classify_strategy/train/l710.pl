% L710: A parent-teacher committee consisting of 4 people is to be formed from 20 parents and 5 teachers.  Find the probability that the committee will consist of 2 teachers and 2 parents. ## Solution= 38/253

group(people).

given(exactly(20, people, parent)).
given(exactly(5, people, teacher)).

take(people, 1-3, 4).

probability(and(exactly(2, 1-3, teacher), exactly(2, 1-3, parent))).

property(property, [teacher, parent]).

