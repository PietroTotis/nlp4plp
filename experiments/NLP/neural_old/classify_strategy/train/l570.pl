% L570: If a bowl contains ten hazelnuts and eight almonds, what is the probability that four nuts randomly selected from the bowl will all be hazelnuts? ## Solution= 7/102

group(1-3).

given(exactly(10, 1-3, hazelnut)).
given(exactly(8, 1-3, almond)).

take(1-3, 1-17, 4).

probability(all(1-17, hazelnut)).

property(property, [almond, hazelnut]).

