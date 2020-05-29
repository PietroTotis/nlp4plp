% L37: Tim has some gum drops in a bag: 20 red, 5 green and 12 yellow.  What is the probability of not selecting a red? ## Solution= 17/37

group(1-8).

given(exactly(20, 1-8, red)).
given(exactly(12, 1-8, yellow)).
given(exactly(5, 1-8, green)).

take(1-8, 2-9, 1).

probability(none(2-9, red)).

property(property, [green, red, yellow]).

