% L659: A recent study of 200 nurses found that of 125 female nurses, 56 had bachelor 's degrees ; and of 75 male nurses, 34 had bachelor 's degrees.  If a nurse is selected at random, find the probability that the nurse is A female nurse with a bachelor 's degree. ## Solution= 7/25

group(1-6).
size(1-6, 200).

given(exactly(75, 1-6, male)).
given(exactly(125, 1-6, female)).
given(exactly(56, 1-6, and(bachelor, female))).
given(exactly(34, 1-6, and(bachelor, male))).

take(1-6, 2-3, 1).

probability(and(all(2-3, female), all(2-3, bachelor))).

property(gender, [male, female]).
property(bachelor, [bachelor]).

