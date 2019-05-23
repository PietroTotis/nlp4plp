% L866: In a group of 19 people waiting at a bus stop one morning, 13 people had an umbrella, 4 people had a raincoat and 3 people had both an umbrella and a raincoat.  What is the probability that a randomly selected person has an umbrella but not a raincoat? ## Solution= 0.526315789473684

group(1-3).
size(1-3, 19).

given(exactly(4, 1-3, raincoat)).
given(exactly(3, 1-3, and(raincoat, umbrella))).
given(exactly(13, 1-3, umbrella)).

take(1-3, 2-9, 1).

probability(and(all(2-9, umbrella), none(2-9, raincoat))).

property(umbrella, [umbrella]).
property(raincoat, [raincoat]).

