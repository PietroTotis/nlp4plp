% H953: Bean seeds from supplier A have an 85 percent germination rate and those from supplier B have a 75 percent germination rate.  A seed company purchases 40 percent of their bean seeds from supplier A and the remaining 60 percent from supplier B and mixes these together.  If a seed germinates, what is the probability it came from supplier A? ## Solution= 0.430379746835443

group(2-10).

given(exactly(rel(85/100, 2-10, a), 2-10, and(a, germination))).
given(exactly(rel(75/100, 2-10, b), 2-10, and(b, germination))).
given(exactly(rel(60/100, 2-10), 2-10, b)).
given(exactly(rel(40/100, 2-10), 2-10, a)).

take(2-10, 3-3, 1).
observe(all(3-3, germination)).

probability(all(3-3, a)).

property(supplier, [a, b]).
property(germination, [germination]).

