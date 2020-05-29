% H961: The probability is 1 that a fisherman will say he had a good day when, in fact, he did, but the probability is only 0.6 that he will say he had a good day when, in fact, he did not.  Only 1/4 of his fishing days are actually good days.  What is the probability he had a good day if he says he had a good day? ## Solution= 0.357142857142857

group(2-6).

given(exactly(rel(.6, 2-6, not), 2-6, and(not, say_good))).
given(exactly(rel(1/1, 2-6, good), 2-6, and(good, say_good))).
given(exactly(rel(1/4, 2-6), 2-6, good)).
given(exactly(u, 2-6, not)).

take(2-6, 3-9, 1).
observe(all(3-9, say_good)).

probability(all(3-9, good)).

property(say, [say_good]).
property(good, [not, good]).

