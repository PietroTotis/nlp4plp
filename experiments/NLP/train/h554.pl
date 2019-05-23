% H554: From 7 teachers and 5 pupils, a random selection of 7 is made.  What is the probability that is contains at least 4 teachers? ## Solution= 149/198

group(people).

given(exactly(5, people, pupil)).
given(exactly(7, people, teacher)).

take(people, 1-12, 7).

probability(atleast(4, 1-12, teacher)).

property(property, [teacher, pupil]).

