% M257: There are 5 red pens, 3 blue pens and 2 green pens in a box.  Gary takes at random a pen from the box and gives the pen to his friend.  Gary then takes at random another pen from the box.  What is the probability that both pens are the same colour? ## Solution= 0.311111111111111

group(1-16).

given(exactly(3, 1-16, blue)).
given(exactly(2, 1-16, green)).
given(exactly(5, 1-16, red)).

take(1-16, 2-6, 2).

probability(all_same(2-6,colour)).

property(colour, [blue, green, red]).

