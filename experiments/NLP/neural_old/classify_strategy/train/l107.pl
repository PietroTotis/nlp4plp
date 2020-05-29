% L107: 45 percent of the children in a school have a dog, 30 percent have a cat, and 18 percent have a dog and a cat.  What percent of those who have a dog also have a cat? ## Solution= 0.4

group(1-5).

given(exactly(rel(45/100, 1-5), 1-5, dog)).
given(exactly(rel(30/100, 1-5), 1-5, cat)).
given(exactly(rel(18/100, 1-5), 1-5, and(cat, dog))).

take(1-5, 2-2, 1).
observe(all(2-2, dog)).

probability(all(2-2, cat)).

property(dog, [dog]).
property(cat, [cat]).

