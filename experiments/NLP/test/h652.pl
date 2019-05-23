% H652: Four species of fish - black molly, guppy, goldfish, and neon - are available in a fish store.  A child has been told that she may choose any two of these fish species for her aquarium.  Then several fish of each of the selected species will be purchased.  Suppose that she is equally likely to choose each fish species.  Find the probability she chooses a guppy and a neon. ## Solution= 1/6

group(1-2).
size(1-2, 4).

given(exactly(1, 1-2, goldfish)).
given(exactly(1, 1-2, guppy)).
given(exactly(1, 1-2, molly)).
given(exactly(1, 1-2, neon)).

take(1-2, 2-18, 2).


probability(and(some(2-18, guppy), some(2-18, neon))).

property(outcome(0), [goldfish, guppy, molly, neon]).

