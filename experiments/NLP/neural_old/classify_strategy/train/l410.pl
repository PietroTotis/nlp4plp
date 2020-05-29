% L410: A cookie jar has 3 red marbles and 1 white marble.  A shoebox has 1 red marble and 1 white marble.  Three marbles are chosen at random without replacement from the cookie jar and placed in the shoebox.  Then 2 marbles are chosen at random and without replacement from the shoebox.  What is the probability that both marbles chosen from the shoebox are red? ## Solution= 3/8

group(2-2).

group(3-17).

group(1-3).

given(exactly(1, 2-2, red)).
given(exactly(3, 1-3, red)).
given(exactly(1, 2-2, white)).
given(exactly(1, 1-3, white)).

take(3-17, 4-3, 2).
take(1-3, 3-2, 3).

union(3-17, [3-2, 2-2]).
probability(all(4-3, red)).

property(color, [white, red]).

