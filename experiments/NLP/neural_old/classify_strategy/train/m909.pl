% M909: In a group, there are 5 teachers and 15 students.  If two people are chosen, what is the probability of choosing two students sequentially? ## Solution= 0.5526315789

group(1-3).

given(exactly(5, 1-3, teacher)).
given(exactly(15, 1-3, student)).

take(1-3, 2-3, 2).

probability(all(2-3, student)).

property(function, [teacher, student]).

