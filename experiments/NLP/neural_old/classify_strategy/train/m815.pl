% M815: In a child ' s pocket are 2 quarters and 2 nickels.  He randomly picks a coin, does not replace it, and picks another.  What is the probability that the first and the second coin are quarters? ## Solution= 0.166666666666667

group(1-6).

given(exactly(2, 1-6, nickel)).
given(exactly(2, 1-6, quarters)).

take(1-6, 2-5, 2).

probability(all(2-5, quarters)).

property(coin, [nickel, quarters]).

