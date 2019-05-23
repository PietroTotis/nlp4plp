% M170: A jar of marbles contains 4 blue marbles, 1 green marble, 5 red marbles and 2 black marbles.  A marble is chosen at random from the jar.  After replacing it, a second marble is chosen.  What is the probability of drawing a blue and a black marble? ## Solution= 1/18 * 2

group(1-2).

given(exactly(4, 1-2, blue)).
given(exactly(1, 1-2, green)).
given(exactly(2, 1-2, black)).
given(exactly(5, 1-2, red)).

take_wr(1-2, 2-2, 2).

probability(and(exactly(1, 2-2, black), exactly(1, 2-2, blue))).

property(colour, [blue, green, black, red]).

