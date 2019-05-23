% H653: Four species of fish - black molly, guppy, goldfish, and neon - are available in a fish store.  A child has been told that she may choose any two of these fish species for her aquarium.  Then several fish of each of the selected species will be purchased.  Suppose that she is equally likely to choose each fish species.  Find the probability that she either has a black molly, or a neon, but not both. ## Solution= 10/16

group(1-2).
size(1-2, 4).

given(exactly(1, 1-2, goldfish)).
given(exactly(1, 1-2, guppy)).
given(exactly(1, 1-2, molly)).
given(exactly(1, 1-2, neon)).

take_wr(1-2, 2-18, 2).


probability(and(or(some(2-18, molly), some(2-18, neon)), not(and(some(2-18, molly), some(2-18, neon))))).

property(outcome(0), [goldfish, guppy, molly, neon]).

