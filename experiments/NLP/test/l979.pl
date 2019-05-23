% L979: Among undergraduate students living on a college campus, 20 percent have an automobile.  Among undergraduate students living off campus, 60 percent have an automobile.  Among undergraduate students, 30 percent live on campus.  Give the probability that a randomly selected student lives off campus. ## Solution= 0.7

group(3-3).

given(exactly(rel(30/100, 3-3), 3-3, campus)).

take(3-3, 4-8, 1).

probability(none(4-8, campus)).

property(property, [campus]).

