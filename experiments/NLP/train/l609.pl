% L609: In a certain community, 36 percent of the families own a dog and 22 percent of the families that own a dog also own a cat.  In addition, 30 percent of the families own a cat.  What is the probability that a randomly selected family owns both a dog and a cat? ## Solution= 0.0792

group(1-10).

given(exactly(rel(22/100, 1-10, dog), 1-10, and(cat, dog))).
given(exactly(rel(30/100, 1-10), 1-10, cat)).
given(exactly(rel(36/100, 1-10), 1-10, dog)).

take(1-10, 3-9, 1).

probability(and(all(3-9, dog), all(3-9, cat))).

property(dog, [dog]).
property(cat, [cat]).

