% M218: In Fairfax, 3 of the 18 radio stations play country music.  What is the probability that a randomly selected station will play country music? ## Solution= 1/6

group(1-9).
size(1-9, 18).

given(exactly(3, 1-9, country)).

take(1-9, 2-9, 1).

probability(all(2-9, country)).

property(style, [country]).

