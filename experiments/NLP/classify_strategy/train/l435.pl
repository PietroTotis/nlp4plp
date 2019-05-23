% L435: There are 6 red shoes and 4 green shoes.  If two shoes are drawn what is the probability of getting red shoes? ## Solution= 1/3

group(shoes).

given(exactly(6, shoes, red)).
given(exactly(4, shoes, green)).

take(shoes, 2-3, 2).

probability(all(2-3, red)).

property(property, [green, red]).

