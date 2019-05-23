% M729: A drawer contains an unorganized collection of 18 socks - three pairs are red, two pairs are white, and four pairs are black.  If one sock is drawn at random from the drawer, what is the probability that it is red? ## Solution= 1/3

group(1-9).
size(1-9, 18).

given(exactly(6, 1-9, red)).
given(exactly(4, 1-9, white)).
given(exactly(8, 1-9, black)).

take(1-9, 2-3, 1).

probability(all(2-3, red)).

property(colour, [white, black, red]).

