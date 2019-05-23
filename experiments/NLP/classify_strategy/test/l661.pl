% L661: At a particular school with 200 male students, 58 play football, 40 play basketball, and 8 play both.  What is the probability that a randomly selected male student plays neither sport? ## Solution= 0.55

group(1-4).
size(1-4, 200).

given(exactly(8, 1-4, and(basketball, football))).
given(exactly(58, 1-4, football)).
given(exactly(40, 1-4, basketball)).

take(1-4, 2-10, 1).

probability(and(none(2-10, basketball), none(2-10, football))).

property(basketball, [basketball]).
property(football, [football]).

