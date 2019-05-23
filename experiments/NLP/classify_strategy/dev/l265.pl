% L265: A laundry bag contains 5 red, 9 blue and 6 white socks.  Two socks are selected at random.  Find the probability that 2 red socks are selected. ## Solution= 1/19

group(1-3).

given(exactly(9, 1-3, blue)).
given(exactly(5, 1-3, red)).
given(exactly(6, 1-3, white)).

take(1-3, 2-2, 2).

probability(all(2-2, red)).

property(property, [blue, white, red]).

