% H240: Consider a die with 1 painted on three sides, 2 painted on two sides, and 3 painted on one side.  If we roll this die ten times what is the probability we get five 1 's, three 2 's and two 3 's? ## Solution= (10!/(5!*3!*2!))*(((1/2)^5)*((1/3)^3)*((1/6)^2))

group(1-3).

given(exactly(3, 1-3, one)).
given(exactly(1, 1-3, three)).
given(exactly(2, 1-3, two)).

take_wr(1-3, 2-7, 10).

probability(and(exactly(5, 2-7, one), and(exactly(3, 2-7, two), exactly(2, 2-7, three)))).

property(property, [three, two, one]).

