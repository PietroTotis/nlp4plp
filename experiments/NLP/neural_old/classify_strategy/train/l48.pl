% L48: If the letters in the word POKER are rearranged, what is the probability that the word will begin with a K and ends with an O? ## Solution= 0.05

group(1-7).
size(1-7, 5).

given(exactly(1, 1-7, k)).
given(exactly(1, 1-7, o)).

take(1-7, 1-17, 5).

probability(and(nth(1, 1-17, k), nth(5, 1-17, o))).

property(property, [k, o]).

