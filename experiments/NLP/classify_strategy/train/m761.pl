% M761: A drawer contains an unorganized collection of 50 socks - 20 are red and 30 are blue.  Suppose the lights go out so Kathy ca n't distinguish the color of the socks.  If two socks are taken at random from the drawer, what is the probability that they make a matching pair? ## Solution= 0.5102040816

group(1-2).
size(1-2, 50).

given(exactly(30, 1-2, blue)).
given(exactly(20, 1-2, red)).

take(1-2, 3-3, 2).

probability(all_same(3-3,colour)).

property(colour, [blue, red]).

