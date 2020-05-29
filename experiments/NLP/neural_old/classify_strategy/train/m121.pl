% M121: Mark is going to an awards dinner and wants to dress appropriately.  He is running behind schedule and asks his little brother to randomly select an outfit for him.  Mark has one blue dress shirt, one white dress shirt, one black dress shirt, one pair of black slacks, one pair of gray slacks, and one red tie.  What is the probability that Mark 's little brother selects an outfit with white shirt and gray slacks or an outfit with a black shirt? ## Solution= 1/2

group(3-1).

given(exactly(1, 3-1, and(black, slacks))).
given(exactly(1, 3-1, and(gray, slacks))).
given(exactly(1, 3-1, and(blue, shirt))).
given(exactly(1, 3-1, and(black, shirt))).
given(exactly(1, 3-1, and(red, tie))).
given(exactly(1, 3-1, and(shirt, white))).

take(3-1, 4-12, 2).
observe(exactly(1, 4-12, shirt)).
observe(exactly(1, 4-12, slacks)).

probability(or(and(some(4-12, and(gray, slacks)), some(4-12, and(white, shirt))), some(4-12, and(black, shirt)))).

property(color, [blue, gray, white, black, red]).
property(type, [tie, shirt, slacks]).

