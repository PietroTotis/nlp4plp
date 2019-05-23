% M586: A bowl of fruit contains the following: 4 blackberries, 8 raspberries, 5 elderberries and 4 blueberries.  What is the probability of choosing a blueberry and eating it and then grabbing an elderberry at random? ## Solution= 0.0476190476190476

group(1-2).

given(exactly(4, 1-2, blackberry)).
given(exactly(8, 1-2, raspberry)).
given(exactly(5, 1-2, elderberry)).
given(exactly(4, 1-2, blueberry)).

take(1-2, 2-8, 2).

probability(and(nth(1, 2-8, blueberry), nth(2, 2-8, elderberry))).

property(fuit_type, [raspberry, blueberry, elderberry, blackberry]).

