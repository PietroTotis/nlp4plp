% M520: A woman chooses an item at random from 20 suits and 14 skirts.  What is the probability that the woman chooses an item that is not a suit? ## Solution= 0.411764705

group(clothes).

given(exactly(14, clothes, skirt)).
given(exactly(20, clothes, suit)).

take(clothes, 2-10, 1).

probability(none(2-10, suit)).

property(type, [skirt, suit]).

