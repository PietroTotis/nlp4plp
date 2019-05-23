% H347: In a lottery, there are 10 prizes and 25 blanks.  A lottery is drawn at random.  What is the probability of getting a prize? ## Solution= 2/7

group(1-3).

given(exactly(25, 1-3, blank)).
given(exactly(10, 1-3, prize)).

take(1-3, 2-2, 1).

probability(all(2-2, prize)).

property(property, [prize, blank]).

