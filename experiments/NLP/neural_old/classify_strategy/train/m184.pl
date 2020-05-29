% M184: Six red balls and four blue balls are placed in an urn.  Four balls are drawn at random from the urn.  What is the probability that all four are blue if each ball is returned to the urn before the next is drawn? ## Solution= 0.0256

group(1-12).

given(exactly(6, 1-12, red)).
given(exactly(4, 1-12, blue)).

take_wr(1-12, 2-2, 4).

probability(all(2-2, blue)).

property(colour, [blue, red]).

