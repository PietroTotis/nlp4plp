% M572: A bag contains 21 blue, 14 yellow, 16 black, and 16 green caps.  A cap is drawn at random.  What is the probability that the cap is yellow? ## Solution= 14/67

group(1-2).

given(exactly(21, 1-2, blue)).
given(exactly(16, 1-2, black)).
given(exactly(16, 1-2, green)).
given(exactly(14, 1-2, yellow)).

take(1-2, 2-2, 1).

probability(all(2-2, yellow)).

property(colour, [blue, black, green, yellow]).

