% M449: Susan took two tests.  The probability of her passing both tests is 0.6.  The probability of her passing the first test is 0.8.  What is the probability of her passing the second test given that she has passed the first test? ## Solution= 0.75

group(probabilities_passing).

given(exactly(rel(0.6, probabilities_passing), probabilities_passing, and(first, second))).
given(exactly(rel(0.8, probabilities_passing), probabilities_passing, first)).

take(probabilities_passing, 4-4, 1).
observe(all(4-4, first)).

probability(all(4-4, second)).

property(second, [second]).
property(first, [first]).

