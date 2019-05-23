% L846: An urn contains 25 balls of which 10 balls bear a mark ` X ' and the remaining 15 bear a mark ` Y '.  A ball is drawn at random from the urn, its mark is noted down and it is replaced.  If 6 balls are drawn in this way, find the probability that the number of balls with ` X ' mark and ` Y ' mark will be equal. ## Solution= 864/3125

group(1-2).
size(1-2, 25).

given(exactly(15, 1-2, y)).
given(exactly(10, 1-2, x)).

take_wr(1-2, 3-3, 6).

probability(and(exactly(3, 3-3, x), exactly(3, 3-3, y))).

property(property, [y, x]).

