% H386: Becky has 10 brown socks and 10 black socks.  If she randomly selects two socks from the drawer simultaneously, what is the probability that they are the same color? ## Solution= 9/19

group(2-9).

given(exactly(10, 2-9, brown)).
given(exactly(10, 2-9, black)).

take(2-9, 2-6, 2).

probability(all_same(2-6,color)).

property(color, [brown, black]).

