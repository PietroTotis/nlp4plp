% H514: An inspector working for a company has a 98 percent chance of correctly identifying defective items and a 1 percent chance of incorrectly classifying a good item as defective.  The company has evidence that its line produces 2 percent of nonconforming items.  What is the probability that an item selected for inspection is classified as defective? ## Solution= 0.0294

group(1-6).

given(exactly(u, 1-6, good)).
given(exactly(rel(2/100, 1-6), 1-6, defective)).
given(exactly(rel(1/100, 1-6, good), 1-6, and(good, incorrectly))).
given(exactly(rel(98/100, 1-6, defective), 1-6, and(correctly, defective))).

take(1-6, 3-7, 1).

probability(all(3-7, or(and(defective, correctly), and(incorrectly, good)))).

property(status, [good, defective]).
property(classification, [correctly, incorrectly]).

