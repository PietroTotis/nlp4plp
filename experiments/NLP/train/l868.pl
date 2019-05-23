% L868: In a class of 30 students 25 passed the term mathematics test, 24 passed the science test and 23 students passed both tests.  What is the probability that a student passed neither mathematics nor science? ## Solution= 0.133333333333333

group(1-6).
size(1-6, 30).

given(exactly(25, 1-6, mathematics)).
given(exactly(23, 1-6, and(mathematics, science))).
given(exactly(24, 1-6, science)).

take(1-6, 2-7, 1).

probability(and(none(2-7, mathematics), none(2-7, science))).

property(science, [science]).
property(math, [mathematics]).

