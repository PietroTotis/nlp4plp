% M58: A grocery story obtains 35 percent of its produce from vendor A, and 65 percent of its produce from vendor B.  It is expected that spoilage will result in 12 percent of vendor A 's produce and 17 percent of vendor B 's produce to be discarded.  What is the probability that a randomly picked produce item came from vendor A, given that it was picked from the discard pile? ## Solution= 0.275409836065574

group(1-9).

given(exactly(rel(17/100, 1-9, b), 1-9, and(b, spoilage))).
given(exactly(rel(65/100, 1-9), 1-9, b)).
given(exactly(rel(35/100, 1-9), 1-9, a)).
given(exactly(rel(12/100, 1-9, a), 1-9, and(a, spoilage))).

take(1-9, 3-10, 1).
observe(all(3-10, spoilage)).

probability(all(3-10, a)).

property(property, [spoilage]).
property(vendor, [a, b]).

