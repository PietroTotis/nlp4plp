% M920: A box contains 21 pink socks and 19 black socks.  If two socks are picked at random one after the other with replacement, what is the probability that the first sock is pink and then black? ## Solution= 0.249375

group(1-2).

given(exactly(21, 1-2, pink)).
given(exactly(19, 1-2, black)).

take_wr(1-2, 2-3, 2).

probability(and(nth(1, 2-3, pink), nth(2, 2-3, black))).

property(colour, [pink, black]).

