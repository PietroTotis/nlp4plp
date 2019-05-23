% L131:  Teddy has two pairs of black shoes and three pairs of brown shoes.  He also has three pairs of red socks, four pairs of brown socks and six pairs of black socks, If Teddy chooses a pair of shoes at random and a pair of socks at random, what is the probability that the colors he chooses are black and brown? ## Solution= 2/5

group(shoes).
group(socks).

given(exactly(2, shoes, black)).
given(exactly(3, shoes, brown)).

given(exactly(3, socks, red)).
given(exactly(4, socks, brown)).
given(exactly(6, socks, black)).

take(shoes, shoe, 1).
take(socks, sock, 1).

probability(or(and(all(shoe, black), all(sock, brown)), and(all(sock, black), all(shoe, brown)))).

property(colors, [black, red, brown]).
