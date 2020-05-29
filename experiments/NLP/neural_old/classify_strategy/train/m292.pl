% M292: A black bag contains 15 marbles.  7 of the marbles are blue while the remainder are green.  One marble is chosen from the bag.  Then another is chosen, without the first marble being returned.  What is the probability of choosing two marbles of the same colour - in any order? ## Solution= 98/210

group(1-3).
size(1-3, 15).

given(exactly(7, 1-3, blue)).
given(exactly(8, 1-3, green)).

take(1-3, 3-2, 2).

probability(all_same(3-2,colour)).

property(colour, [blue, green]).

