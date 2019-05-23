% M113: 30 students in a high school English class are asked to write down their two favorite foods.  Of the 30 students, 10 write that one of their favorite foods is tacos, 18 write that one of their favorite foods is pizza, and 5 write that tacos and pizza are their two favorite foods.  What is the probability that a student writes tacos and pizza? ## Solution= 1/6

group(1-2).
size(1-2, 30).

given(exactly(10, 1-2, taco)).
given(exactly(5, 1-2, and(pizza, taco))).
given(exactly(18, 1-2, pizza)).

take(1-2, 3-7, 1).

probability(all(3-7, and(taco, pizza))).

property(pizza, [pizza]).
property(taco, [taco]).

