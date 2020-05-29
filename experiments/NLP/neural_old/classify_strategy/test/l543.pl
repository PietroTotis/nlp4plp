% L543: The probability that an automobile being filled with gasoline will also need an oil change is 0.25, the probability that it needs a new oil filter is 0.40 and the probability that both the oil and filter need changing is 0.14.  If the oil had to be changed, what is the probability that a new oil filter is needed? ## Solution= 0.56

group(probabilities).

given(exactly(rel(0.14, probabilities), probabilities, and(filter, oil))).
given(exactly(rel(0.25, probabilities), probabilities, oil)).
given(exactly(rel(0.4, probabilities), probabilities, filter)).

take(probabilities, 2-12, 1).
observe(all(2-12, oil)).

probability(all(2-12, filter)).

property(filter, [filter]).
property(oil, [oil]).

