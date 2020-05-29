% L69: Mrs. Williams is a huge baseball fan.  She surveyed the school and found 3 out of 10 students were Boston Red Sox Fans, 3 out of 10 students were New York Yankee fans, and 2 out of 10 students were Texas Rangers.  What is the probability of randomly choosing 2 student names successively that are not Yankees fans? ## Solution= 49/100

group(2-4).

given(exactly(rel(3/10, 2-4), 2-4, boston)).
given(exactly(rel(3/10, 2-4), 2-4, yankee)).
given(exactly(rel(2/10, 2-4), 2-4, texas)).

take(2-4, 3-9, 2).

probability(none(3-9, yankee)).

property(team, [boston, texas, yankee]).

