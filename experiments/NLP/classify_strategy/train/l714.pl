% L714: A drawer contains 11 identical red socks and 8 identical black socks.  Suppose that you choose 2 socks at random in the dark What is the probability that you get a pair of red socks? ## Solution= 55/171

group(1-2).

given(exactly(8, 1-2, black)).
given(exactly(11, 1-2, red)).

take(1-2, 2-6, 2).

probability(all(2-6, red)).

property(property, [black, red]).

