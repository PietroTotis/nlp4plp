% L95: A bag contains 5 red marbles, 4 green marbles and 1 blue marble.  A marble is chosen at random from the bag and not replaced ; then a second marble is chosen.  What is the probability both marbles are green? ## Solution= 2/15

group(1-2).

group(rest(2-2)).

given(exactly(1, 1-2, blue)).
given(exactly(4, 1-2, green)).
given(exactly(5, 1-2, red)).

take(1-2, 2-2, 1).
take(rest(2-2), 2-17, 1).

probability(and(all(2-2, green), all(2-17, green))).

property(color, [blue, green, red]).

