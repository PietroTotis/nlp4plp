% H860: Suppose that 80 percent of the seniors, 70 percent of the juniors, 50 percent of the sophomores, and 30 percent of the freshmen of a college use the library of their campus frequently.  If 30 percent of all students are freshmen, 25 percent are sophomores, 25 percent are juniors, and 20 percent are seniors, what percent of all students use the library frequently? ## Solution= .55

group(2-6).

given(exactly(rel(25/100, 2-6), 2-6, junior)).
given(exactly(rel(25/100, 2-6), 2-6, sophomore)).
given(exactly(rel(30/100, 2-6), 2-6, freshman)).
given(exactly(rel(20/100, 2-6), 2-6, senior)).
given(exactly(rel(80/100, 2-6, senior), 2-6, and(senior, use))).
given(exactly(rel(50/100, 2-6, sophomore), 2-6, and(sophomore, use))).
given(exactly(rel(70/100, 2-6, junior), 2-6, and(junior, use))).
given(exactly(rel(30/100, 2-6, freshman), 2-6, and(freshman, use))).

take(2-6, 2-27, 1).

probability(all(2-27, use)).

property(class, [freshman, senior, junior, sophomore]).
property(library, [use]).

