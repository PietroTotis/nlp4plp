% L477: Machines A and B turn out respectively 10 percent and 90 percent of the total production of a certain type of article.  The probability that machine A turns out a defective item is 0.01 and the probability that machine B turns out a defective item is 0.05.  What is the probability that an article taken at random from the production line was made by machine A, given that it is defective? ## Solution= 1/46

group(1-22).

given(exactly(rel(90/100, 1-22), 1-22, b)).
given(exactly(rel(5/100, 1-22, b), 1-22, and(b, defective))).
given(exactly(rel(1/100, 1-22, a), 1-22, and(a, defective))).
given(exactly(rel(10/100, 1-22), 1-22, a)).

take(1-22, 3-7, 1).
observe(all(3-7, defective)).

probability(all(3-7, a)).

property(machine, [a, b]).
property(state, [defective]).

