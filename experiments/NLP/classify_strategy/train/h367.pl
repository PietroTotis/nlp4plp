% H367: There are 5 blue chips and 3 yellow chips in a bag.  One chip is drawn from the bag.  That chip is placed back into the bag.  A second chip is then drawn.  What is the probability that the two selected chips are of different colors? ## Solution= 15/32

group(1-12).

given(exactly(3, 1-12, yellow)).
given(exactly(5, 1-12, blue)).

take_wr(1-12, 2-2, 1).
take(1-12, 4-3, 1).

union(5-9, [2-2, 4-3]).
probability(all_diff(5-9,color)).

property(color, [blue, yellow]).

