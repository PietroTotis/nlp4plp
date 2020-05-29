% L264: A kitchen drawer contains 7 forks, 4 spoons and 5 knives.  Three are selected at random.  Find the probability that 3 forks are selected. ## Solution= 0.0625

group(1-3).

given(exactly(7, 1-3, fork)).
given(exactly(5, 1-3, knife)).
given(exactly(4, 1-3, spoon)).

take(1-3, 2-1, 3).

probability(all(2-1, fork)).

property(property, [fork, spoon, knife]).

