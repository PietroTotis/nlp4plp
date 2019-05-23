% H161: Three cooks, A, B, and C, bake a special kind of cake, and with respective probabilities .02, .03, and .05, it fails to rise.  In the restaurant where they work, A bakes 50 percent of these cakes, B 30 percent, and C 20 percent.  What proportion of `` failures '' is caused by A? ## Solution= 0.34482759

group(1-16).

given(exactly(rel(.03, 1-16, b), 1-16, and(b, fail))).
given(exactly(rel(.02, 1-16, a), 1-16, and(a, fail))).
given(exactly(rel(20/100, 1-16), 1-16, c)).
given(exactly(rel(30/100, 1-16), 1-16, b)).
given(exactly(rel(50/100, 1-16), 1-16, a)).
given(exactly(rel(.05, 1-16, c), 1-16, and(c, fail))).

take(1-16, 3-5, 1).
observe(all(3-5, fail)).

probability(all(3-5, a)).

property(cook, [a, c, b]).
property(rise, [fail]).

