% L434: There are 5 red shoes, 4 green shoes.  If one draw randomly a shoe what is the probability of getting a red shoe? ## Solution= 5/9

group(shoes).

given(exactly(5, shoes, red)).
given(exactly(4, shoes, green)).

take(shoes, 2-6, 1).

probability(all(2-6, red)).

property(property, [green, red]).

