% L873: A bag contains 4 oranges, 3 apples and 2 bananas.  If one piece of fruit is chosen at random from the bag, find the probability that it is an apple or a banana? ## Solution= 5/9

group(1-2).

given(exactly(4, 1-2, orange)).
given(exactly(3, 1-2, apple)).
given(exactly(2, 1-2, banana)).

take(1-2, 2-3, 1).

probability(all(2-3, or(apple, banana))).

property(property, [orange, apple, banana]).

