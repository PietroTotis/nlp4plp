% L106: In Exton School, 40 percent of the girls like music and 12 percent of the girls like music and dance.  What percent of those that like music also like dance? ## Solution= 0.3

group(girls).

given(exactly(rel(40/100, girls), girls, music)).
given(exactly(rel(12/100, girls), girls, and(dance, music))).

take(girls, 2-4, 1).
observe(all(2-4, music)).

probability(all(2-4, dance)).

property(dance, [dance]).
property(music, [music]).

