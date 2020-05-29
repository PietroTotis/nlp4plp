% L812:  Three groups of children contain respectively 3 girls and 1 boy, 2 girls and 2 boys, 1 girl and 3 boys.  One child is selected at random from each group.  Find the probability that three selected children consist of 1 girl and 2 boys. ## Solution= 13/32

group(group1).
group(group2).
group(group3).

given(exactly(3, group1, girl)).
given(exactly(1, group1, boy)).

given(exactly(2, group2, girl)).
given(exactly(2, group2, boy)).

given(exactly(1, group3, girl)).
given(exactly(3, group3, boy)).

take(group1, child1, 1).
take(group2, child2, 1).
take(group3, child3, 1).

union(children, [child1, child2, child3]).

probability(and(exactly(1, children, girl), exactly(2, children, boy))).

property(gender, [boy, girl]).