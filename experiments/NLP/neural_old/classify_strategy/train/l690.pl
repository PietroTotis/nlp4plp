% L690: In a civic organization, there are 38 members ; 15 are men and 23 are women.  If 3 members are selected to plan the July 4th parade, find the probability that all 3 are women. ## Solution= 1771/8436

group(1-9).
size(1-9, 38).

given(exactly(23, 1-9, woman)).
given(exactly(15, 1-9, man)).

take(1-9, 2-3, 3).

probability(all(2-3, woman)).

property(property, [woman, man]).

