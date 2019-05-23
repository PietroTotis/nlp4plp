% L772: There are an equal number of pennies, nickels, dimes, and quarters in a bag.  What is the probability that the combined value of the four coins randomly selected with replacement will be $ 0.41? ## Solution= 3/32

group(1-17).

given(exactly(rel(1/4, 1-17), 1-17, 1)).
given(exactly(rel(1/4, 1-17), 1-17, 5)).
given(exactly(rel(1/4, 1-17), 1-17, 25)).
given(exactly(rel(1/4, 1-17), 1-17, 10)).

take_wr(1-17, 2-12, 4).

probability(aggcmp(2-12,coin,sum,=:=,41)).

property(coin, [1, 25, 5, 10]).

