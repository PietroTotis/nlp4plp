% M810: A survey indicated that 30 percent of the customers buying a new computer, buy a clone.  Of those, 10 percent buy a laser printer.  What is the probability that a randomly selected computer customer buys a clone with a laser printer? ## Solution= 3/100

group(1-9).

given(exactly(rel(10/100, 1-9, clone), 1-9, and(clone, printer))).
given(exactly(rel(30/100, 1-9), 1-9, clone)).

take(1-9, 3-10, 1).

probability(all(3-10, and(clone, printer))).

property(purchase, [clone]).
property(buy, [printer]).

