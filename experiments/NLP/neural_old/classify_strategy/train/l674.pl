% L674: A person owns a collection of 30 CDs, of which 5 are country music.  If 2 CDs are selected at random, find the probability that both are country music. ## Solution= 2/87

group(1-5).
size(1-5, 30).

given(exactly(5, 1-5, country)).

take(1-5, 2-3, 2).

probability(all(2-3, country)).

property(property, [country]).

