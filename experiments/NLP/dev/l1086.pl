% L1086: An urn contains 225 white marbles and 15 black marbles.  If we randomly pick, without replacement, two marbles in succession from the urn, what is the probability that they will both be black? ## Solution= 7/1912

group(1-2).

given(exactly(225, 1-2, white)).
given(exactly(15, 1-2, black)).

take(1-2, 2-10, 2).

probability(all(2-10, black)).

property(property, [white, black]).

