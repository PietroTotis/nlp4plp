% M296: Fran has 16 CDs in a box: 6 country, 6 rock, 2 dance, and 2 classical.  If she takes out one CD without looking, what is the probability that she will pick a rock or country CD? ## Solution= 0.75

group(1-7).
size(1-7, 16).

given(exactly(6, 1-7, country)).
given(exactly(6, 1-7, rock)).
given(exactly(2, 1-7, dance)).
given(exactly(2, 1-7, classical)).

take(1-7, 2-6, 1).

probability(all(2-6, or(rock, country))).

property(genre, [dance, country, classical, rock]).

