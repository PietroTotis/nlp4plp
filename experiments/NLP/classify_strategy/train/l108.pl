% L108: 45 percent of the children in a school have a dog, 30 percent have a cat, and 18 percent have a dog and a cat.  What percent of those who have a cat also have a dog? ## Solution= 0.6

group(1-5).

given(exactly(rel(45/100, 1-5), 1-5, dog)).
given(exactly(rel(30/100, 1-5), 1-5, cat)).
given(exactly(rel(18/100, 1-5), 1-5, and(cat, dog))).

take(1-5, 2-2, 1).
observe(all(2-2, cat)).

probability(all(2-2, dog)).

property(dog, [dog]).
property(cat, [cat]).

