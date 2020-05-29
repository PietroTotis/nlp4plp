% M214: Of the 12 people attending a lecture, 4 have gray eyes.  What is the probability that a randomly selected person will have gray eyes? ## Solution= 1/3

group(1-4).
size(1-4, 12).

given(exactly(4, 1-4, gray)).

take(1-4, 2-9, 1).

probability(all(2-9, gray)).

property(eyes_colour, [gray]).

