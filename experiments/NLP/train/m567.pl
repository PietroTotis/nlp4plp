% M567: A refrigerator contains 6 apples, 5 oranges, 10 bananas, 3 pears, 7 peaches, 11 plums, and 2 mangos.  Imagine now that you put your hand in the refrigerator and pull out a piece of fruit.  You decide you do not want to eat that fruit so you put it back into the refrigerator and pull out another piece of fruit.  What is the probability that the first piece of fruit you pull out is a banana and the second piece you pull out is an apple? ## Solution= 0.03099173554

group(1-2).

given(exactly(11, 1-2, plum)).
given(exactly(6, 1-2, apple)).
given(exactly(10, 1-2, banana)).
given(exactly(5, 1-2, orange)).
given(exactly(3, 1-2, pear)).
given(exactly(2, 1-2, mango)).
given(exactly(7, 1-2, peach)).

take_wr(1-2, 2-15, 1).
take(1-2, 3-23, 1).

probability(and(all(2-15, banana), all(3-23, apple))).

property(fruit, [apple, peach, plum, pear, mango, orange, banana]).

