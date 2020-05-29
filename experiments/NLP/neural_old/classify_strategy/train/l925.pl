% L925: Past records show that 4 of 135 parts are defective in length, 3 of 141 are defective in width, and 2 of 347 are defective in both.  What is the probability that a part produced under the same conditions will be defective in length or width or both? ## Solution= 0.045142537

group(parts).

given(exactly(rel(2/347, parts), parts, and(length, width))).
given(exactly(rel(3/141, parts), parts, width)).
given(exactly(rel(4/135, parts), parts, length)).

take(parts, 2-7, 1).

probability(all(2-7, or(length, width))).

property(width, [width]).
property(length, [length]).

