% M550: A box contains four black pieces of cloth, two striped pieces, and six dotted pieces.  A piece is selected randomly and then placed back in the box.  A second piece is selected randomly.  What is the probability that the first piece is black and the second piece is dotted? ## Solution= 0.166666666666667

group(1-2).

given(exactly(2, 1-2, striped)).
given(exactly(4, 1-2, black)).
given(exactly(6, 1-2, dot)).

take_wr(1-2, 2-2, 2).

probability(and(nth(1, 2-2, black), nth(2, 2-2, dot))).

property(property, [striped, black, dot]).

