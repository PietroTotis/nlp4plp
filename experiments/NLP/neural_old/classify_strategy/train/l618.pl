% L618: A bag has 6 pieces of paper, each with one of the letters, E, E, P, P, P and R, on it.  Pull 6 pieces at random out of the bag without, replacement.  What is the probability that these pieces, in order, spell PEPPER? ## Solution= 1/60

group(1-2).
size(1-2, 6).

given(exactly(3, 1-2, p)).
given(exactly(2, 1-2, e)).
given(exactly(1, 1-2, r)).

take(1-2, 2-3, 6).

probability(and(and(and(nth(1, 2-3, p), nth(2, 2-3, e)), and(nth(3, 2-3, p), nth(4, 2-3, p))), and(nth(5, 2-3, e), nth(6, 2-3, r)))).

property(property, [p, r, e]).

