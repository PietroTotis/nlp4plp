% L828: A factory has two machines A and B. Past record shows that machine A produced 60 percent of the items of output and machine B produced 40 percent of the items.  Further, 2 percent of the items produced by machine A and 1 percent produced by machine B were defective.  All the items are put into one stockpile and then one item is chosen at random from this and is found to be defective.  What is the probability that it was produced by machine B? ## Solution= 1/4

group(1-5).
size(1-5, 2).

given(exactly(rel(2/100, 1-5, a), 1-5, and(a, defective))).
given(exactly(rel(1/100, 1-5, b), 1-5, and(b, defective))).
given(exactly(rel(40/100, 1-5), 1-5, b)).
given(exactly(rel(60/100, 1-5), 1-5, a)).

take(1-5, 3-12, 1).
observe(all(3-12, defective)).

probability(all(3-12, b)).

property(machine, [a, b]).
property(defective, [defective]).

