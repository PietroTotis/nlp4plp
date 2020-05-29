% H762: Twelve school photographs are placed in random order face down on a table.  Two of them are of identical twin boys.  One of the twins is brought into the room and asked to select a photograph.  What is the probability that he will select his own by chance? ## Solution= 1/12

group(1-3).
size(1-3, 12).

given(exactly(1, 1-3, twins)).

take(1-3, 3-15, 1).

probability(all(3-15, twins)).

property(property, [twins]).

