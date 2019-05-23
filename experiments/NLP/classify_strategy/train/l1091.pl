% L1091: A TV manufacturer buys TV tubes from three sources.  Source A supplies 50 percent of all tubes and has a 1 percent defective rate.  Source B supplies 30 percent of all tubes and has a 2 percent defective rate.  Source C supplies the remaining 20 percent of tubes and has a 5 percent defective rate.  What is the probability that a randomly selected purchased tube is defective? ## Solution= 0.021

group(1-6).

given(exactly(rel(2/100, 1-6, b), 1-6, and(b, defective))).
given(exactly(rel(1/100, 1-6, a), 1-6, and(a, defective))).
given(exactly(rel(20/100, 1-6), 1-6, c)).
given(exactly(rel(30/100, 1-6), 1-6, b)).
given(exactly(rel(50/100, 1-6), 1-6, a)).
given(exactly(rel(5/100, 1-6, c), 1-6, and(c, defective))).

take(1-6, 5-10, 1).

probability(all(5-10, defective)).

property(source, [a, c, b]).
property(defective, [defective]).

