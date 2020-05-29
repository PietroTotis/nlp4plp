% L575: A club with eight members from grade 11 and five members from grade 12 is to elect a president, vice-president, and secretary.  What is the probability that grade 12 students will be elected for all three positions, assuming that all club members have an equal chance of being elected? ## Solution= 0.034965035

group(1-2).

given(exactly(8, 1-2, 11)).
given(exactly(5, 1-2, 12)).

take(1-2, 2-15, 3).

probability(all(2-15, 12)).

property(property, [11, 12]).

