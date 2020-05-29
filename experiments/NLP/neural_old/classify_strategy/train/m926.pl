% M926: A bag contains eight red marbles and four blue marbles.  You randomly pick a marble and then pick a second marble without returning the marbles to the bag.  What is the probability that the first marble is red and the second marble is blue? ## Solution= 0.242424242424242

group(rest(2-5)).

group(1-2).

given(exactly(4, 1-2, blue)).
given(exactly(8, 1-2, red)).

take(rest(2-5), 2-11, 1).
take(1-2, 2-5, 1).

probability(and(all(2-11, blue), all(2-5, red))).

property(colour, [blue, red]).

