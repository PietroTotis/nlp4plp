% H940: Ten race cars, numbered from 1, 2, 3, 4, 5, 6, 7, 8, 9 and 10, are running around a track.  An observer sees three cars go by.  If the cars appear in random order, what is the probability that the largest number seen is 6? ## Solution= 1/12

group(1-3).
size(1-3, 10).

given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 8)).
given(exactly(1, 1-3, 3)).
given(exactly(1, 1-3, 9)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 10)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 7)).

take(1-3, 2-5, 3).

probability(aggcmp(2-5,number,max,=:=,6)).

property(number, [10, 1, 3, 2, 5, 4, 7, 6, 9, 8]).

