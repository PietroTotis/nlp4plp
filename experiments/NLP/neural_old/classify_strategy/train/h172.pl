% H172: A type C battery is in working condition with probability .7, whereas a type D battery is in working condition with probability .4.  A battery is randomly chosen from a bin consisting of 8 type C and 6 type D batteries.  Given that the battery does not work, what is the conditional probability that it was a type C battery? ## Solution= .4

group(2-8).

given(exactly(6, 2-8, d)).
given(exactly(rel(.7, 2-8, c), 2-8, and(c, work))).
given(exactly(rel(.4, 2-8, d), 2-8, and(d, work))).
given(exactly(8, 2-8, c)).

take(2-8, 2-2, 1).
observe(none(2-2, work)).

probability(all(2-2, c)).

property(type, [c, d]).
property(condition, [work]).

