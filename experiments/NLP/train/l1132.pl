% L1132: In the United States during the 1993 - 1994 school year, 39.6 percent of all male teachers and 26.1 percent of all female teachers had twenty years or more of full-time teaching experience.  That year 694,000 males and 1,867,000 females were teachers.  What is the probability that a randomly chosen teacher in the United States that year was a female with twenty years or more of full-time teaching experience? ## Solution= 0.1902721593

group(teachers).

given(exactly(rel(39.6/100, teachers, male), teachers, and(experience, male))).
given(exactly(rel(26.1/100, teachers, female), teachers, and(experience, female))).
given(exactly(1867000, teachers, female)).
given(exactly(694000, teachers, male)).

take(teachers, 3-9, 1).

probability(and(all(3-9, female), all(3-9, experience))).

property(gender, [male, female]).
property(experience, [experience]).

