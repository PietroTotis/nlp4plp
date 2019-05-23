% M30: A pack contains 4 blue, 2 red and 3 black pens.  If a pen is drawn at random from the pack, replaced and the process repeated 2 more times, what is the probability of drawing 2 blue pens and 1 black pen? ## Solution= 0.197530864197531

group(1-2).

given(exactly(4, 1-2, blue)).
given(exactly(3, 1-2, black)).
given(exactly(2, 1-2, red)).

take_wr(1-2, 2-3, 3).

probability(and(exactly(1, 2-3, black), exactly(2, 2-3, blue))).

property(colour, [blue, black, red]).

