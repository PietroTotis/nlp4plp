% M448: A bag contains 5 white marbles, 3 black marbles and 2 green marbles.  In each draw, a marble is drawn from the bag and not replaced.  In three draws, what is the probability of obtaining white, black and green in that order? ## Solution= 1/24

group(1-2).

given(exactly(3, 1-2, black)).
given(exactly(5, 1-2, white)).
given(exactly(2, 1-2, green)).

take(1-2, 2-6, 3).

probability(and(nth(1, 2-6, white), and(nth(2, 2-6, black), nth(3, 2-6, green)))).

property(colour, [green, white, black]).

