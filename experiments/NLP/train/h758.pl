% H758: A nationwide survey of 17,000 seniors by the University of Michigan revealed that almost 70 percent disapprove of daily pot smoking.  If 18 of these seniors are selected at random and asked their opinions, what is the probability that more than 9 but less than 14 disapprove of smoking pot? ## Solution= 0.60796695

group(1-6).
size(1-6, 17000).

given(exactly(rel(70/100, 1-6), 1-6, disapprove)).

take(1-6, 2-2, 18).

probability(and(more_than(9, 2-2, disapprove), less_than(14, 2-2, disapprove))).

property(property, [disapprove]).

