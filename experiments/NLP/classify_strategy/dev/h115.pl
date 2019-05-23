% H115: A jar contains 25 orange, 16 white, and 4 violet marbles.  A marble is drawn at random.  What is the probability of drawing an orange marble? ## Solution= 25/45

group(1-2).

given(exactly(25, 1-2, orange)).
given(exactly(4, 1-2, violet)).
given(exactly(16, 1-2, white)).

take(1-2, 2-2, 1).

probability(all(2-2, orange)).

property(property, [orange, white, violet]).

