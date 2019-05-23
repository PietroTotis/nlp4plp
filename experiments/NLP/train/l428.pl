% L428: A large basket of fruit contains 3 oranges, 2 apples and 5 bananas.  If a piece of fruit is chosen at random, what is the probability of getting an orange or a banana? ## Solution= 4/5

group(1-3).

given(exactly(3, 1-3, orange)).
given(exactly(5, 1-3, banana)).
given(exactly(2, 1-3, apple)).

take(1-3, 2-3, 1).

probability(all(2-3, or(orange, banana))).

property(property, [orange, banana, apple]).

