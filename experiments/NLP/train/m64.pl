% M64: Bruce is going to call one person from his contacts at random.  He has 25 total contacts.  20 of those contacts are from his neighborhood.  What is the probability that he calls a person not from his neighborhood? ## Solution= 1/5

group(1-10).
size(1-10, 25).

given(exactly(20, 1-10, neighborhood)).

take(1-10, 1-7, 1).

probability(none(1-7, neighborhood)).

property(residence, [neighborhood]).

