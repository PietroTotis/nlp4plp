% L1046: What is the probability of drawing an ace from a well-shuffled deck of 52 playing cards, that contains 4 aces? ## Solution= 1/13

group(1-12).
size(1-12, 52).

given(exactly(4, 1-12, ace)).

take(1-12, 1-8, 1).

probability(all(1-8, ace)).

property(property, [ace]).

