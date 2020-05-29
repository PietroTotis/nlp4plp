% H651: Four species of fish - black molly, guppy, goldfish, and neon - are available in a fish store.  A child has been told that she may choose any two of these fish species for her aquarium.  Then several fish of each of the selected species will be purchased.  Suppose that she is equally likely to choose each fish species.  Find the probability she does not choose a guppy. ## Solution= 9/16

group(1-2).
size(1-2, 4).

given(exactly(1, 1-2, goldfish)).
given(exactly(1, 1-2, guppy)).
given(exactly(1, 1-2, molly)).
given(exactly(1, 1-2, neon)).

take_wr(1-2, 2-18, 2).


probability(none(2-18, guppy)).

property(outcome(0), [goldfish, guppy, molly, neon]).

