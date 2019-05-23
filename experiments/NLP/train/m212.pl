% M212: There are 3 cards numbered 2, 3 and 4.  You pick a card at random.  What is the probability of getting a 3? ## Solution= 1/3

group(1-4).
size(1-4, 3).

given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 2-2, 1).


probability(all(2-2, 3)).

property(outcome(0), [3, 2, 4]).

