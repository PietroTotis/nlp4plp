% L337: A company has three factories 1, 2 and 3, that produce the same chip, each producing 15 percent, 35 percent and 50 percent of the total production.  The probability of a defective chip at 1, 2, 3 is 0.01, 0.05, 0.02, respectively.  Suppose someone shows us a defective chip.  What is the probability that this chip comes from factory 1? ## Solution= 0.051724138

group(1-2).

given(exactly(rel(15/100, 1-2), 1-2, 1)).
given(exactly(rel(0.01, 1-2, 1), 1-2, and(1, defective))).
given(exactly(rel(0.02, 1-2, 3), 1-2, and(3, defective))).
given(exactly(rel(0.05, 1-2, 2), 1-2, and(2, defective))).
given(exactly(rel(50/100, 1-2), 1-2, 3)).
given(exactly(rel(35/100, 1-2), 1-2, 2)).

take(1-2, 3-7, 1).
observe(all(3-7, defective)).

probability(all(3-7, 1)).

property(chip, [defective]).
property(factory, [1, 3, 2]).

