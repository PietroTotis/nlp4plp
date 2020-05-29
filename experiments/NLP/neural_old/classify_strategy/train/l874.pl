% L874: In Franklin College, 40 percent of the freshmen are enrolled in a mathematics course, and 75 percent are enrolled in an English course, and 20 percent are taking both.  What is the probability that a randomly selected freshman is taking an English course if it is known that he or she is enrolled in a mathematics course? ## Solution= 0.5

group(students).

given(exactly(rel(40/100, students), students, mathematics)).
given(exactly(rel(20/100, students), students, and(english, mathematics))).
given(exactly(rel(75/100, students), students, english)).

take(students, 2-9, 1).
observe(all(2-9, mathematics)).

probability(all(2-9, english)).

property(math, [mathematics]).
property(english, [english]).

