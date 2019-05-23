% M510: A boy chooses an item at random from 15 remote cars and 20 teddy bears.  What is the probability that the boy will not choose a teddy bear? ## Solution= 15/35

group(toys).

given(exactly(20, toys, bear)).
given(exactly(15, toys, car)).

take(toys, 1-5, 1).

probability(none(1-5, bear)).

property(type, [car, bear]).

