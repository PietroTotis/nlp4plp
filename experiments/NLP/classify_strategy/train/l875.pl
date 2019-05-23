% L875: In Franklin College, 40 percent of the freshmen are enrolled in a mathematics course, and 75 percent are enrolled in an English course, and 20 percent are taking both.  If a randomly selected freshman is taking an English course, what is the probability that he or she is also enrolled in a mathematics course? ## Solution= 0.266666666666667

group(students).

given(exactly(rel(40/100, students), students, mathematics)).
given(exactly(rel(20/100, students), students, and(english, mathematics))).
given(exactly(rel(75/100, students), students, english)).

take(students, 2-5, 1).
observe(all(2-5, english)).

probability(all(2-5, mathematics)).

property(math, [mathematics]).
property(english, [english]).

