% M254: Two 6-sided dice are each marked 1, 1, 2, 2, 3, 3.  Jot down all the possible pairs of numbers that you can get when the two dice are thrown.  The pairs of numbers are added together to get a score.  As the dice are only marked from 1-3, there 's maximum score of 6.  What 's the probability of getting a score of 6? ## Solution= 1/9

group(1-3).
size(1-3, 6).

given(exactly(2, 1-3, 1)).
given(exactly(2, 1-3, 2)).
given(exactly(2, 1-3, 3)).

take_wr(1-3, 2-18, 2).


probability(aggcmp(2-18,outcome(0),sum,=:=,6)).

property(outcome(0), [1, 3, 2]).

