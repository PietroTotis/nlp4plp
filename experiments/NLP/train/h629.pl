% H629: There are two winning tickets amongst ten tickets available.  Determine the probability that both tickets will be among five tickets selected at random. ## Solution= 2/9

group(1-8).
size(1-8, 10).

given(exactly(2, 1-8, winning)).

take(1-8, 2-11, 5).

probability(exactly(2, 2-11, winning)).

property(property, [winning]).

