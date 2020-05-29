% M224: A bag contains a large number of balls coloured red, green or blue.  If the probability of choosing a red ball from the bag is 0.425 and the probability of choosing a blue ball from the bag is 0.35, what is the probability of choosing either a red or a blue ball from the bag? ## Solution= 0.775

group(1-2).

given(exactly(rel(0.35, 1-2), 1-2, blue)).
given(exactly(u, 1-2, green)).
given(exactly(rel(0.425, 1-2), 1-2, red)).

take(1-2, 2-31, 1).

probability(all(2-31, or(red, blue))).

property(color, [blue, green, red]).

