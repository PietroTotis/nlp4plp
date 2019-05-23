% M501: A bowl contains 2 green, 10 blue, and 8 red stones.  If two stones are chosen at random from the bowl, what is the probability that none of them are green? ## Solution= 0.805263157894737

group(1-2).

given(exactly(10, 1-2, blue)).
given(exactly(2, 1-2, green)).
given(exactly(8, 1-2, red)).

take(1-2, 2-3, 2).

probability(none(2-3, green)).

property(colour, [blue, green, red]).

