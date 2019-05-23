% L643: For a recent year, 51 percent of the families in the United States had no children under the age of 18 ; 20 percent had one child ; 19 percent had two children ; 7 percent had three children ; and 3 percent had four or more children.  If a family is selected at random, find the probability that the family has two or three children. ## Solution= 0.26

group(1-10).

given(exactly(rel(20/100, 1-10), 1-10, one)).
given(exactly(rel(51/100, 1-10), 1-10, no)).
given(exactly(rel(7/100, 1-10), 1-10, three)).
given(exactly(rel(3/100, 1-10), 1-10, four)).
given(exactly(rel(19/100, 1-10), 1-10, two)).

take(1-10, 2-3, 1).

probability(all(2-3, or(two, three))).

property(property, [four, no, three, two, one]).

