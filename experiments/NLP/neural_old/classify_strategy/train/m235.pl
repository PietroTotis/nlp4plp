% M235: You 're going to be tossing a coin twice.  There are two possible outcomes, and each is equally-likely to occur.  What is the probability of a heads on the first toss and a tails on the second toss? ## Solution= 1/4

group(1-8).
size(1-8, 2).

given(exactly(1, 1-8, tails)).
given(exactly(1, 1-8, head)).

take_wr(1-8, 1-6, 2).


probability(and(nth(1, 1-6, head), nth(2, 1-6, tails))).

property(outcome(0), [head, tails]).

