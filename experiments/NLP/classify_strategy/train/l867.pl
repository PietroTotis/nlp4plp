% L867: In a survey of a music class it was found that 9 students played the piano, 4 played the guitar and no students played both piano and guitar.  There were 18 students in the class.  What is the probability that a randomly selected student plays the piano or the guitar? ## Solution= 0.722222222222222

group(1-7).
size(1-7, 18).

given(exactly(0, 1-7, and(guitar, piano))).
given(exactly(9, 1-7, piano)).
given(exactly(4, 1-7, guitar)).

take(1-7, 3-9, 1).

probability(all(3-9, or(piano, guitar))).

property(guitar, [guitar]).
property(piano, [piano]).

