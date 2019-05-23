% H1002: There are four bottles of sparkling water sitting on a desk.  One of them is still full.  If Hannah randomly chooses a bottle of water, what is the probability that she chooses one that is still full? ## Solution= 1/4

group(1-4).
size(1-4, 4).

given(exactly(1, 1-4, full)).

take(1-4, 3-6, 1).

probability(all(3-6, full)).

property(property, [full]).

