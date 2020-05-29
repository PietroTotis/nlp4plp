% H409: A bag contains 6 white and 4 black hats.  Two hats are drawn simultaneously at random.  What is the probability that both are of the same colour? ## Solution= 0.466666666666667

group(1-2).

given(exactly(6, 1-2, white)).
given(exactly(4, 1-2, black)).

take(1-2, 2-2, 2).

probability(all_same(2-2,color)).

property(color, [white, black]).

