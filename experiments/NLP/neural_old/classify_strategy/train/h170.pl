% H170: Six balls are to be randomly chosen from an urn containing 8 red, 10 green, and 12 blue balls.  Give that no red balls are chosen, what is the conditional probability that there are exactly 2 green balls among the 6 chosen? ## Solution= (C(10,2)*C(12,4))/C(22,6)

group(1-10).

given(exactly(8, 1-10, red)).
given(exactly(10, 1-10, green)).
given(exactly(12, 1-10, blue)).

take(1-10, 1-2, 6).
observe(none(1-2, red)).

probability(exactly(2, 1-2, green)).

property(property, [blue, green, red]).

