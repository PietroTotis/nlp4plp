% M551: A box contains four black pieces of cloth, two striped pieces, and six dotted pieces.  A piece is selected randomly and then placed back in the box.  A second piece is selected randomly.  What is the probability that one piece is black and one piece is striped? ## Solution= 0.111111111111111

group(1-2).

given(exactly(4, 1-2, black)).
given(exactly(6, 1-2, dot)).
given(exactly(2, 1-2, stripe)).

take_wr(1-2, 2-2, 2).

probability(and(exactly(1, 2-2, black), exactly(1, 2-2, stripe))).

property(property, [black, stripe, dot]).

