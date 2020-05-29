% H285: A bag contains 5 brown and 4 white socks.  A man pulls out two socks.  What is the probability that they are the same color? ## Solution= 4/9

group(1-2).

given(exactly(4, 1-2, white)).
given(exactly(5, 1-2, brown)).

take(1-2, 2-6, 2).

probability(all_same(2-6,color)).

property(color, [brown, white]).

