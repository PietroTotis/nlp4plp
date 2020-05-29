% L579: A six-member working group to plan a student common room is to be selected from five teachers and nine students.  If the working group is randomly selected, what is the probability that it will include at least two teachers? ## Solution= 2289/3003

group(people).

given(exactly(9, people, student)).
given(exactly(5, people, teacher)).

take(people, 1-4, 6).

probability(atleast(2, 1-4, teacher)).

property(property, [teacher, student]).

