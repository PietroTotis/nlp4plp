% M440: Andrea has 8 blue socks and 4 red socks in her drawer.  She chooses one sock at random and puts it on.  She then chooses another sock without looking.  What is the probability of the following event: red, then red? ## Solution= 0.0909090909090909

group(1-12).

given(exactly(4, 1-12, red)).
given(exactly(8, 1-12, blue)).

take(1-12, 2-4, 2).

probability(and(nth(1, 2-4, red), nth(2, 2-4, red))).

property(colour, [blue, red]).

