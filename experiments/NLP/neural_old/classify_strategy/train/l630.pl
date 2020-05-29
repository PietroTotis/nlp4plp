% L630: A group of 20 Scandinavians consists of 7 Swedes, 3 Finns, and 10 Norwegians.  A committee of five people is chosen at random from this group.  What is the probability that at least one of the three nations is not represented on the committee? ## Solution= 0.48077915

group(1-2).
size(1-2, 20).

given(exactly(3, 1-2, finn)).
given(exactly(10, 1-2, norwegian)).
given(exactly(7, 1-2, swede)).

take(1-2, 2-2, 5).

probability(or(or(all(2-2, not(swede)), all(2-2, not(finn))), all(2-2, not(norwegian)))).

property(property, [norwegian, swede, finn]).

