% M70: Cam can not figure out what to eat.  He is going to randomly select a piece of fruit from his pantry.  There are 4 apples and 5 bananas in his pantry.  What is the probability that he selects an apple? ## Solution= 4/9

group(2-13).

given(exactly(5, 2-13, banana)).
given(exactly(4, 2-13, apple)).

take(2-13, 2-8, 1).

probability(all(2-8, apple)).

property(fruit, [banana, apple]).

