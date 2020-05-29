% L1071: The faculty of a college consists of 35 female faculty and 65 male faculty.  70 percent of the female faculty favor raising tuition, while only 40 percent of the male faculty favor the increase.  If a faculty member is selected at random from this group, what is the probability that he or she favors raising tuition? ## Solution= 0.505

group(1-2).

given(exactly(rel(70/100, 1-2, female), 1-2, and(favor, female))).
given(exactly(rel(40/100, 1-2, male), 1-2, and(favor, male))).
given(exactly(65, 1-2, male)).
given(exactly(35, 1-2, female)).

take(1-2, 3-4, 1).

probability(all(3-4, favor)).

property(gender, [male, female]).
property(favor, [favor]).

