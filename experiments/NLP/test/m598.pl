% M598: Cattle are selected at random from a herd.  The probability that an animal is coloured white is 0.24.  The probability that an animal is male is 0.39.  The probability that the animal has been vaccinated is 0.83.  What are the probabilities that an animal selected at random is not white? ## Solution= 0.76

group(1-1).

given(exactly(rel(0.39, 1-1), 1-1, male)).
given(exactly(rel(0.83, 1-1), 1-1, vaccinate)).
given(exactly(rel(0.24, 1-1), 1-1, white)).

take(1-1, 5-7, 1).

probability(none(5-7, white)).

property(colour, [white]).
property(property, [vaccinate]).
property(sex, [male]).

