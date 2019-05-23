% M120: There are 600 students in a high school junior class.  Of these 600 students, 350 regularly wear a watch to school, 325 regularly wear earrings, and 300 regularly wear a watch and earrings.  What is the probability that a student wears a watch? ## Solution= 7/12

group(1-4).
size(1-4, 600).

given(exactly(325, 1-4, earring)).
given(exactly(350, 1-4, watch)).
given(exactly(300, 1-4, and(earring, watch))).

take(1-4, 3-7, 1).

probability(all(3-7, watch)).

property(earrings, [earring]).
property(watch, [watch]).

