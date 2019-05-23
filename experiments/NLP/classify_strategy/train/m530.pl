% M530: A man chooses an item at random from 12 shirts and 18 ties.  What is the probability that what the man chooses is not a shirt? ## Solution= 3/5

group(clothes).

given(exactly(12, clothes, shirt)).
given(exactly(18, clothes, tie)).

take(clothes, 1-5, 1).

probability(none(1-5, shirt)).

property(clothes, [tie, shirt]).

