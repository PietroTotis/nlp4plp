% H461: You have two pairs of red socks, three pairs of mauve socks, and four pairs with a rather attractive rainbow motif.  If you pick two socks at random, what is the probability that they match? ## Solution= 49/153

group(socks).

given(exactly(8, socks, rainbow)).
given(exactly(6, socks, mauve)).
given(exactly(4, socks, red)).

take(socks, 2-5, 2).

probability(all_same(2-5,color)).

property(color, [mauve, red, rainbow]).

