% M536: There are 16 chocolates in a plate and 5 of them are dairy milk.  If 1 chocolate is chosen at random, what is the probability that it will not be dairy milk? ## Solution= 11/16

group(1-4).
size(1-4, 16).

given(exactly(5, 1-4, milk)).

take(1-4, 2-3, 1).

probability(none(2-3, milk)).

property(chocolate_type, [milk]).

