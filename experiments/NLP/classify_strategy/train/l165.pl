% L165: Four dices with 6 sides, numbered 1, 2, 3, 4, 5 and 6, are thrown once.  Find the probability that we obtain at least one six. ## Solution= 671/1296

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-21, 4).


probability(atleast(1, 1-21, 6)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

