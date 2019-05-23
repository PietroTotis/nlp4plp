% L845: An urn contains 25 balls of which 10 balls bear a mark ` X ' and the remaining 15 bear a mark ` Y '.  A ball is drawn at random from the urn, its mark is noted down and it is replaced.  If 6 balls are drawn in this way, find the probability that at least one ball will bear ` Y ' mark ## Solution= 1-(2/5)^6

group(1-2).
size(1-2, 25).

given(exactly(15, 1-2, y)).
given(exactly(10, 1-2, x)).

take_wr(1-2, 3-3, 6).

probability(atleast(1, 3-3, y)).

property(property, [y, x]).

