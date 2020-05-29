% L809: A drawer contains 50 bolts and 150 nuts.  Half of the bolts and half of the nuts are rusted.  If one item is chosen at random, what is the probability that it is rusted or is a bolt? ## Solution= 5/8

group(1-2).

given(exactly(rel(1/2, 1-2, bolt), 1-2, and(bolt, rust))).
given(exactly(rel(1/2, 1-2, nut), 1-2, and(nut, rust))).
given(exactly(150, 1-2, nut)).
given(exactly(50, 1-2, bolt)).

take(1-2, 3-3, 1).

probability(all(3-3, or(rust, bolt))).

property(food, [nut, bolt]).
property(rusted, [rust]).

