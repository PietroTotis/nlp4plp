% H99: A new bag of golf tees contains 10 red tees, 10 orange tees, 10 green tees and 10 blue tees.  You empty the tees into your golf bag.  What is the probability of grabbing out two tees of the same color in a row for you and your partner? ## Solution= 9/39

group(1-6).

given(exactly(10, 1-6, green)).
given(exactly(10, 1-6, blue)).
given(exactly(10, 1-6, red)).
given(exactly(10, 1-6, orange)).

take(1-6, 3-9, 2).

probability(all_same(3-9,color)).

property(color, [blue, orange, green, red]).

