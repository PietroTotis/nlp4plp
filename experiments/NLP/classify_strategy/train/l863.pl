% L863: In a class of 29 students, 13 have black hair, 10 have brown eyes and 5 have both black hair and brown eyes.  If one student is selected randomly, what is the probability that the student has black hair or brown eyes, but not both? ## Solution= 0.448275862068966

group(1-3).
size(1-3, 29).

given(exactly(13, 1-3, black)).
given(exactly(10, 1-3, brown)).
given(exactly(5, 1-3, and(black, brown))).

take(1-3, 2-3, 1).

probability(all(2-3, and(not(and(black, brown)), or(black, brown)))).

property(hair, [black]).
property(eyes, [brown]).

