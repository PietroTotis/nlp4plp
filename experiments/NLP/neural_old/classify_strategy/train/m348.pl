% M348:  10 cards are numbered 1, 2, 3, 4, 5, 6, 7, 8, 9, 10.  The cards are well shuffled and are drawn at random.  If two cards are drawn with replacement, what is the probability of choosing a prime number in both the first and the second draw? ## Solution= 0.16

group(2-2).
size(2-2, 10).

given(exactly(1, 2-2, 9)).
given(exactly(1, 2-2, 2)).
given(exactly(1, 2-2, 1)).
given(exactly(1, 2-2, 6)).
given(exactly(1, 2-2, 4)).
given(exactly(1, 2-2, 7)).
given(exactly(1, 2-2, 5)).
given(exactly(1, 2-2, 10)).
given(exactly(1, 2-2, 3)).
given(exactly(1, 2-2, 8)).

take_wr(2-2, 2-8, 2).

probability(all(2-8, is_prime)).

property(outcome(0), [10, 1, 3, 2, 5, 4, 7, 6, 9, 8]).
