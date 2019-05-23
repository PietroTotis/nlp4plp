% M541: A bag contains 15 bottles.  In which 5 are pink, 6 are black, and 4 are red.  1 bottle is chosen at random from the bag, what is the probability that it is not pink? ## Solution= 2/3

group(1-2).
size(1-2, 15).

given(exactly(5, 1-2, pink)).
given(exactly(6, 1-2, black)).
given(exactly(4, 1-2, red)).

take(1-2, 3-2, 1).

probability(none(3-2, pink)).

property(colour, [pink, black, red]).

