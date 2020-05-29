% M29: A pack contains 4 blue, 2 red and 3 black pens.  If 2 pens are drawn at random from the pack, not replaced and then another pen is drawn, what is the probability of drawing 2 blue pens and 1 black pen? ## Solution= 3/14

group(1-2).

given(exactly(4, 1-2, blue)).
given(exactly(3, 1-2, black)).
given(exactly(2, 1-2, red)).

take(1-2, 2-3, 3).

probability(and(exactly(2, 2-3, blue), exactly(1, 2-3, black))).

property(colour, [blue, black, red]).

