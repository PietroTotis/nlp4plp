% M290: Peter has a bag of 10 marbles.  There are 3 green marbles in the bag.  Peter chooses a marble at random from the bag.  What is the probability that Peter chooses a green marble? ## Solution= 3/10

group(1-4).
size(1-4, 10).

given(exactly(3, 1-4, green)).

take(1-4, 3-4, 1).

probability(all(3-4, green)).

property(colour, [green]).

