% M873: John has on his shelf four books of poetry, four novels, and two reference works.  Suppose from these ten books, we were to pick two books at random.  What is the probability that we pick one novel and one reference work? ## Solution= 8/45

group(2-5).
size(2-5, 10).

given(exactly(4, 2-5, novel)).
given(exactly(2, 2-5, reference)).
given(exactly(4, 2-5, poetry)).

take(2-5, 2-12, 2).

probability(and(exactly(1, 2-12, novel), exactly(1, 2-12, reference))).

property(genre, [novel, poetry, reference]).

