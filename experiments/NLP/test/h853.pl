% H853: In a small lake, it is estimated that there are approximately 105 fish, of which 40 are trout and 65 are carp.  A fisherman caught eight fish ; what is the probability that exactly two of them are trout if we know that at least three of them are not? ## Solution= 0.23902063

group(1-4).
size(1-4, 105).

given(exactly(40, 1-4, trout)).
given(exactly(65, 1-4, carp)).

take(1-4, 2-5, 8).
observe(atleast(3, 2-5, not(trout))).

probability(exactly(2, 2-5, trout)).

property(property, [carp, trout]).

