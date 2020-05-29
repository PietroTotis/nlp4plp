% H387: A store offers customers a game car with 5 scratch-off circles, each hiding a percent discount: 50 percent, 50 percent, 25 percent, 10 percent, 5 percent.  The customer selects two circles to uncover and receives a discount equal to the average of the two values.  What is the probability of receiving a 50 percent discount? ## Solution= 1/10

group(1-11).
size(1-11, 5).

given(exactly(2, 1-11, 50)).
given(exactly(1, 1-11, 10)).
given(exactly(1, 1-11, 5)).
given(exactly(1, 1-11, 25)).

take(1-11, 2-5, 2).

probability(aggcmp(2-5,discount,average,=:=,50)).

property(discount, [25, 5, 50, 10]).

