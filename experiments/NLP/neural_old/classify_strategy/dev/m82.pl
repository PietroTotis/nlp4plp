% M82:  Three houses are available in a locality.  Three persons apply for the houses.  Each applies for one house without consulting others.  What is the probability that all the three apply for the same house? ## Solution= 1/9


group(people).

given(exactly(rel(1/3, people), people, house1)).
given(exactly(rel(1/3, people), people, house2)).
given(exactly(rel(1/3, people), people, house3)).

take_wr(people, choice, 3).

probability(all_same(choice, house)).

property(house, [house1, house2, house3]).