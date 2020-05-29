% L730: A newspaper advertises 5 different movies, 3 plays, and 2 baseball games for the weekend.  If a couple selects 3 activities, find the probability that they attend 2 plays and 1 movie. ## Solution= 1/8

group(activities).

given(exactly(3, activities, play)).
given(exactly(2, activities, game)).
given(exactly(5, activities, movie)).

take(activities, 2-6, 3).

probability(and(exactly(2, 2-6, play), exactly(1, 2-6, movie))).

property(property, [movie, play, game]).

