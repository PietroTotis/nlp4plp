% L39: You have a bag of candy filled with pieces of the same size and shape.  Four are gumballs and six are sweet and sours.  You draw a gumball out, decide you do n't like it, put it back, then select another piece of candy.  What is the probability of selecting another gumball? ## Solution= 2/5

group(1-4).

given(exactly(4, 1-4, gumball)).
given(exactly(6, 1-4, sweet)).

take(1-4, 3-21, 1).

probability(all(3-21, gumball)).

property(property, [gumball, sweet]).

