% H515: An inspector working for a company has a 98 percent chance of correctly identifying defective items and a 1 percent chance of incorrectly classifying a good item as defective.  The company has evidence that its line produces 2 percent of nonconforming items.  If an item selected at random is classified as non-defective, what is the probability that it is indeed good? ## Solution= 0.99958788

group(1-6).

given(exactly(u, 1-6, good)).
given(exactly(rel(2/100, 1-6), 1-6, defective)).
given(exactly(rel(1/100, 1-6, good), 1-6, and(good, incorrectly))).
given(exactly(rel(98/100, 1-6, defective), 1-6, and(correctly, defective))).

take(1-6, 3-3, 1).
observe(all(3-3, or(and(correctly, good), and(defective, incorrectly)))).

probability(all(3-3, correctly)).

property(status, [good, defective]).
property(identified, [correctly, incorrectly]).

