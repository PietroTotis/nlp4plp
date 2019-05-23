% L571: Without looking, Jenny randomly selects two socks from a drawer containing four blue, three white, and five black socks, none of which are paired up.  What is the probability that she chooses two socks of the same colour? ## Solution= 19/66

group(1-11).

given(exactly(3, 1-11, white)).
given(exactly(5, 1-11, black)).
given(exactly(4, 1-11, blue)).

take(1-11, 1-8, 2).

probability(all_same(1-8,colour)).

property(colour, [blue, white, black]).

