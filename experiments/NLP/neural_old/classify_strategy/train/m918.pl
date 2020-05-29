% M918: In a group there are 6 coaches and 19 players.  If three people are chosen, what is the probability of choosing three players sequentially? ## Solution= 0.4213043478

group(1-3).

given(exactly(6, 1-3, coach)).
given(exactly(19, 1-3, player)).

take(1-3, 2-3, 3).

probability(all(2-3, player)).

property(function, [player, coach]).

