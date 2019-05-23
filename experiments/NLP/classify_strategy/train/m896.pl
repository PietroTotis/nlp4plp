% M896: A diagnostic test for a certain type of cancer has a 98 percent chance of giving the correct outcome.  Among all patients who take this particular test, 0.3 percent have the cancer in question.  You take this test and the result comes back positive.  What is the probability that you actually have cancer? ## Solution= 0.128496503496504

group(2-3).

given(exactly(rel(98/100, 2-3, not), 2-3, and(negative, not))).
given(exactly(rel(0.3/100, 2-3), 2-3, yes)).
given(exactly(rel(98/100, 2-3, yes), 2-3, and(positive, yes))).
given(exactly(rel(99.7/100, 2-3), 2-3, not)).

take(2-3, 3-1, 1).
observe(all(3-1, positive)).

probability(all(3-1, yes)).

property(test, [positive, negative]).
property(cancer, [not, yes]).

