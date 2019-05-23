% L100: A bag contains 3 red marbles and 4 blue marbles.  Two marbles are drawn at random without replacement.  If the first marble drawn is blue, what is the probability the second marble is also blue? ## Solution= 1/2

group(1-2).

group(rest(3-4)).

given(exactly(4, 1-2, blue)).
given(exactly(3, 1-2, red)).

take(1-2, 3-4, 1).
observe(all(3-4, blue)).
take(rest(3-4), 3-15, 1).

probability(all(3-15, blue)).

property(property, [blue, red]).

