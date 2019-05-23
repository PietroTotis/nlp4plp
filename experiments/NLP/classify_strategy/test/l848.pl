% L848: A 6-sided die, labeled 1, 2, 3, 4, 5 and 6, is thrown again and again until three sixes are obtained.  Find the probability of obtaining the third six in the sixth throw of the die. ## Solution= 625/23328

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-19, 6).


probability(and(nth(6, 1-19, 6), exactly(3, 1-19, 6))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

