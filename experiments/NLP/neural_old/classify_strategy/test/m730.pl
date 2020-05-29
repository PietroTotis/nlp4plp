% M730: A drawer contains an unorganized collection of 18 socks - three pairs are red, two pairs are white, and four pairs are black.  Once a sock is drawn and discovered to be red, what is the probability of drawing another red sock to make a matching pair? ## Solution= 0.2941176471

group(1-9).
size(1-9, 18).

given(exactly(6, 1-9, red)).
given(exactly(4, 1-9, white)).
given(exactly(8, 1-9, black)).

take(1-9, 2-3, 2).
observe(nth(1, 2-3, red)).

probability(nth(2, 2-3, red)).

property(colour, [white, black, red]).

