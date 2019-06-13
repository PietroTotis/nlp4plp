% M429: The probabilities of three teams A, B and C winning a badminton competition are 1/3, 1/5 and 1/9, respectively.  What is the probability that either A or B or C will win? ## Solution= 29/45

group(1-14).

given(exactly(rel(1/9, 1-14), 1-14, c)).
given(exactly(rel(1/3, 1-14), 1-14, a)).
given(exactly(rel(1/5, 1-14), 1-14, b)).

take(1-14, 2-4, 1).

probability(all(2-4, or(a, or(b, c)))).

property(team, [a, c, b]).
