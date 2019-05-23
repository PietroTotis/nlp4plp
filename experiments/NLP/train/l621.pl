% L621: We have a bag that contains 100 balls, 50 of them red and 50 blue.  Select 5 balls at random.  What is the probability that 3 are blue and 2 are red? ## Solution= 0.31891076

group(1-4).
size(1-4, 100).

given(exactly(50, 1-4, red)).
given(exactly(50, 1-4, blue)).

take(1-4, 2-3, 5).

probability(and(exactly(3, 2-3, blue), exactly(2, 2-3, red))).

property(property, [blue, red]).

