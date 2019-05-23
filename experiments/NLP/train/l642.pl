% L642: Sixty-nine percent of adults favor gun licensing in general.  Choose one adult at random.  What is the probability that the selected adult does n't believe in gun licensing? ## Solution= 0.31

group(1-4).

given(exactly(rel(69/100, 1-4), 1-4, licensing)).

take(1-4, 2-3, 1).

probability(none(2-3, licensing)).

property(property, [licensing]).

