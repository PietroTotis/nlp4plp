% M393: Marty has a drawer containing three white socks, four blue socks, and five black socks.  If Marty randomly selects two socks from the drawer, what is the probability that the socks will be the same color? ## Solution= 0.287878787878788

group(1-4).

given(exactly(5, 1-4, black)).
given(exactly(3, 1-4, white)).
given(exactly(4, 1-4, blue)).

take(1-4, 2-6, 2).

probability(all_same(2-6,colour)).

property(colour, [blue, white, black]).

