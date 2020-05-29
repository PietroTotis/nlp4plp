% H318: A certain roller coaster has 3 cars, car A, car B, and car C, and a passenger is equally likely to ride in any 1 of the 3 cars each time that passenger rides the roller coaster.  If a certain passenger is to ride the roller coaster 3 times, what is the probability that the passenger will ride in each of the 3 cars? ## Solution= 2/9

group(1-7).
size(1-7, 3).

given(exactly(1, 1-7, a)).
given(exactly(1, 1-7, b)).
given(exactly(1, 1-7, c)).

take_wr(1-7, 1-4, 3).


probability(all_diff(1-4,outcome(0))).

property(outcome(0), [a, c, b]).

