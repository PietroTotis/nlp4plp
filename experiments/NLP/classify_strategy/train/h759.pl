% H759: A foreign student club lists as its members 2 Canadians, 3 Japanese, 5 Italians, and 2 Germans.  If a committee of 4 is selected at random, find the probability that all nationalities are represented. ## Solution= 4/33

group(1-8).

given(exactly(3, 1-8, japanese)).
given(exactly(2, 1-8, german)).
given(exactly(2, 1-8, canadian)).
given(exactly(5, 1-8, italian)).

take(1-8, 2-3, 4).

probability(all_diff(2-3,nationality)).

property(nationality, [german, canadian, japanese, italian]).

