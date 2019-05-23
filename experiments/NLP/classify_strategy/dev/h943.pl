% H943: A club of 56 people has 40 men and 16 women.  What is the probability the board of directors, consisting of 8 members, contains no women? ## Solution= 0.0541393916056989

group(1-2).
size(1-2, 56).

given(exactly(40, 1-2, man)).
given(exactly(16, 1-2, woman)).

take(1-2, 2-8, 8).

probability(none(2-8, woman)).

property(property, [woman, man]).

