% L864: In a group of 25 males, 13 play basketball, 11 play football and 6 play both basketball and football.  What is the probability that a randomly man plays football but not basketball? ## Solution= 0.2

group(1-3).
size(1-3, 25).

given(exactly(11, 1-3, football)).
given(exactly(13, 1-3, basketball)).
given(exactly(6, 1-3, and(basketball, football))).

take(1-3, 2-8, 1).

probability(and(all(2-8, football), none(2-8, basketball))).

property(foot, [football]).
property(basket, [basketball]).

