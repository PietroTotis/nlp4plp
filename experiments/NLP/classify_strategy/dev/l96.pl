% L96: A bag contains 5 red marbles, 4 green marbles and 1 blue marble.  A marble is chosen at random from the bag and not replaced ; then a second marble is chosen.  What is the probability that neither marble is blue? ## Solution= 4/5

group(1-2).

group(rest(2-2)).

given(exactly(1, 1-2, blue)).
given(exactly(4, 1-2, green)).
given(exactly(5, 1-2, red)).

take(1-2, 2-2, 1).
take(rest(2-2), 2-17, 1).

probability(and(none(2-2, blue), none(2-17, blue))).

property(color, [blue, green, red]).

