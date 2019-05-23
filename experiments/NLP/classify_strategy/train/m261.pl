% M261: There are three different types of sandwiches on a shelf.  There are 4 egg sandwiches, 5 cheese sandwiches and 2 ham sandwiches.  Erin takes at random 2 of these sandwiches.  Work out the probability that she takes 2 different types of sandwiches. ## Solution= 0.690909090909091

group(1-7).

given(exactly(4, 1-7, egg)).
given(exactly(5, 1-7, cheese)).
given(exactly(2, 1-7, ham)).

take(1-7, 3-5, 2).

probability(all_diff(3-5,kind)).

property(kind, [cheese, egg, ham]).

