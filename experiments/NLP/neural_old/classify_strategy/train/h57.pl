% H57: You have a jar with 24 pieces of chocolate candy and 14 pieces of orange candy.  We take one piece of candy at random from the jar, put it back, and then take a second piece of candy at random from the jar.  What is the probability that you get a piece of chocolate? ## Solution= 12/19

group(1-4).

given(exactly(24, 1-4, chocolate)).
given(exactly(14, 1-4, orange)).

take(1-4, 2-22, 1).

probability(all(2-22, chocolate)).

property(type, [orange, chocolate]).

