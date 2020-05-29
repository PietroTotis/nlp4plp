% H888: Roads A, B, and C are the only escape routes from a state prison.  Prison records show that, of the prisoners who tried to escape, 30 percent used road A, 50 percent used road B, and 20 percent used road C.  These records also show that 80 percent of those who tried to escape via A, 75 percent of those who tried to escape via B, and 92 percent of those who tried to escape via C were captured.  What is the probability that a prisoner who succeeded in escaping used road C? ## Solution= 0.0796019900497512

group(2-8).

given(exactly(rel(92/100, 2-8, c), 2-8, and(c, capture))).
given(exactly(rel(80/100, 2-8, a), 2-8, and(a, capture))).
given(exactly(rel(30/100, 2-8), 2-8, a)).
given(exactly(rel(50/100, 2-8), 2-8, b)).
given(exactly(rel(75/100, 2-8, b), 2-8, and(b, capture))).
given(exactly(rel(20/100, 2-8), 2-8, c)).

take(2-8, 4-7, 1).
observe(none(4-7, capture)).

probability(all(4-7, c)).

property(property, [capture]).
property(road, [a, c, b]).

