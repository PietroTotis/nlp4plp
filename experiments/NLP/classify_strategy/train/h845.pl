% H845: A lake contains 200 trout ; 50 of them are caught randomly, tagged, and returned.  If, again, we catch 50 trout at random, what is the probability of getting exactly five tagged trout? ## Solution= .00206

group(1-5).
size(1-5, 200).

given(exactly(50, 1-5, tag)).

take(1-5, 2-8, 50).

probability(exactly(5, 2-8, tag)).

property(property, [tag]).

