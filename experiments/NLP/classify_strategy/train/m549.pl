% M549: A box contains four black pieces of cloth, two striped pieces, and six dotted pieces.  A piece is selected randomly and then placed back in the box.  A second piece is selected randomly.  What is the probability that both pieces are dotted? ## Solution= 0.25

group(1-2).

given(exactly(2, 1-2, striped)).
given(exactly(4, 1-2, black)).
given(exactly(6, 1-2, dot)).

take_wr(1-2, 2-2, 2).

probability(all(2-2, dot)).

property(property, [striped, black, dot]).

