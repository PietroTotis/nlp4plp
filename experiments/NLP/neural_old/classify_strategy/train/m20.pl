% M20: Thomas has a collection of CDs that he plays regularly.  He has six rock CDs, three country CDs, and four movie sound track CDs.  If Thomas chooses a CD at random, what is the probability that he will pick a country CD? ## Solution= 3/13

group(1-4).

given(exactly(3, 1-4, country)).
given(exactly(6, 1-4, rock)).
given(exactly(4, 1-4, track)).

take(1-4, 3-5, 1).

probability(all(3-5, country)).

property(genre, [track, country, rock]).

