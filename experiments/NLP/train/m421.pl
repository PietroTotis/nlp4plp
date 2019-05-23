% M421: The first ten letters of the alphabet - A, B, C, D, E, F, G, H, I, J - are randomly placed into two equal piles of five letters each.  What is the probability that the letters A, B, and C are all in the same pile of letters? ## Solution= 0.0833333333333333

group(1-4).
size(1-4, 10).

given(exactly(1, 1-4, c)).
given(exactly(1, 1-4, a)).
given(exactly(1, 1-4, b)).

take(1-4, 1-35, 5).

probability(all(1-35, or(and(a, and(b, c)), and(not(a), and(not(b), not(c)))))).

property(letter, [a, c, b]).

