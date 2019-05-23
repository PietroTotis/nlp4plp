% L695: At the Avonlea Country Club, 73 percent of the members play bridge and swim, and 82 percent play bridge.  If a member is selected at random, find the probability that the member swims, given that the member plays bridge. ## Solution= 73/82

group(1-11).

given(exactly(rel(73/100, 1-11), 1-11, and(bridge, swim))).
given(exactly(rel(82/100, 1-11), 1-11, bridge)).

take(1-11, 2-3, 1).
observe(all(2-3, bridge)).

probability(all(2-3, swim)).

property(swim, [swim]).
property(bridge, [bridge]).

