% M173: In Italy there are 21,644,000 families whose regional distribution is: 39 percent in the North, 35 percent in the Centre and 26 percent in the South.  Moreover, 2,558,000 families are below the poverty level, of which 12 percent are in the North, 23 percent in the Centre, and 65 percent in the South.  What is the probability that a family randomly selected from the Centre is poor? ## Solution= (0.23 * 2558000) / (0.35 * 21644000)

group(1-6).

size(1-6, 21644000).

given(exactly(rel(39/100, 1-6), 1-6, north)).
given(exactly(rel(35/100, 1-6), 1-6, centre)).
given(exactly(rel(26/100, 1-6), 1-6, south)).

given(exactly(2558000, 1-6, poverty)).
given(exactly(rel(65/100, 1-6, poverty), 1-6, and(poverty, south))).
given(exactly(rel(12/100, 1-6, poverty), 1-6, and(north, poverty))).
given(exactly(rel(23/100, 1-6, poverty), 1-6, and(centre, poverty))).

take(1-6, 3-9, 1).

observe(all(3-9, centre)).

probability(all(3-9, poverty)).

property(origin, [north, south, centre]).
property(poverty, [poverty]).
