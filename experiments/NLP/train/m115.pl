% M115: 300 students in a high school freshman class are surveyed about what kinds of pets they have.  Of the 300 students, 200 have a dog, 180 have a cat, and 150 have a cat and a dog.  What is the probability that a student in the class has a cat and a dog? ## Solution= 1/2

group(1-2).
size(1-2, 300).

given(exactly(180, 1-2, cat)).
given(exactly(150, 1-2, and(cat, dog))).
given(exactly(200, 1-2, dog)).

take(1-2, 3-7, 1).

probability(all(3-7, and(dog, cat))).

property(dog, [dog]).
property(cat, [cat]).

