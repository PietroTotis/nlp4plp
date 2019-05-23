% L99: A bag contains 3 red marbles and 4 blue marbles.  Two marbles are drawn at random without replacement.  If the first marble drawn is red, what is the probability the second marble is blue? ## Solution= 2/3

group(1-2).

group(rest(3-3)).

given(exactly(4, 1-2, blue)).
given(exactly(3, 1-2, red)).

take(1-2, 3-3, 1).
observe(all(3-3, red)).
take(rest(3-3), 3-14, 1).

probability(all(3-14, blue)).

property(property, [blue, red]).

