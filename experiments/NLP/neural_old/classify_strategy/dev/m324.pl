% M324: A pet shop has 10 puppies, 6 of them males.  There are 3 beagles, of which one male, 1 cocker spaniel, male, and 6 poodles.  What is the probability that one of these puppies, chosen at random, is a cocker spaniel, given that it is a female? ## Solution= 0

group(1-6).
size(1-6, 10).

given(exactly(1, 1-6, and(beagle, male))).
given(exactly(6, 1-6, male)).
given(exactly(6, 1-6, poodle)).
given(exactly(3, 1-6, beagle)).
given(exactly(1, 1-6, and(male, spaniel))).

take(1-6, 3-6, 1).
observe(none(3-6, male)).

probability(all(3-6, spaniel)).

property(breed, [beagle, spaniel, poodle]).
property(sex, [male]).

