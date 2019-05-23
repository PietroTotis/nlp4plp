% M906: A bucket contains 35 bats: 15 are blue, 13 are grey, and 7 are black.  What is the probability of picking a blue and then a black ball without replacing the first one? ## Solution= 0.0882352941176471

group(1-2).
size(1-2, 35).

group(rest(2-8)).

given(exactly(15, 1-2, blue)).
given(exactly(7, 1-2, black)).
given(exactly(13, 1-2, grey)).

take(1-2, 2-8, 1).
take(rest(2-8), 2-13, 1).

probability(and(all(2-8, blue), all(2-13, black))).

property(colour, [blue, black, grey]).

