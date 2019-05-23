% H286: A pack of cards contains 4 aces, 4 kings, 4 queens and 4 jacks.  Two cards are drawn at random.  What is the probability that at least one of them is an ace? ## Solution= 9/20

group(1-2).

given(exactly(4, 1-2, queens)).
given(exactly(4, 1-2, king)).
given(exactly(4, 1-2, ace)).
given(exactly(4, 1-2, jacks)).

take(1-2, 2-2, 2).

probability(atleast(1, 2-2, ace)).

property(property, [king, jacks, ace, queens]).

