% L638: An item is defective, independently of other items, with probability 0.3.  You have a method of testing whether the item is defective, but it does not always give you correct answer.  If the tested item is defective, the method detects the defect with probability 0.9 and says it is good with probability 0.1.  If the tested item is good, then the method says it is defective with probability 0.2 and gives the right answer with probability 0.8.  A box contains 3 items.  You have tested all of them and the tests detect no defects.  What is the probability that none of the 3 items is defective? ## Solution= (56/59)^3

group(items).

given(exactly(rel(0.1, items, defective), items, and(defective, right))).
given(exactly(rel(0.2, items, good), items, and(detect, good))).
given(exactly(rel(0.7, items), items, good)).
given(exactly(rel(0.9, items, defective), items, and(defective, detect))).
given(exactly(rel(0.8, items, good), items, and(good, right))).
given(exactly(rel(0.3, items), items, defective)).

take(items, 5-5, 3).
observe(none(5-5, detect)).

probability(none(5-5, defective)).

property(item, [good, defective]).
property(method, [detect, right]).

