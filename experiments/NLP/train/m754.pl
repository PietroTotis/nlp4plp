% M754: A shelf has ten books: two mysteries, four romance novels, and four mathematics textbooks.  If you select a book at random to take to the beach, what is the probability that it turns out to be a mathematics text? ## Solution= 2/5

group(1-5).
size(1-5, 10).

given(exactly(4, 1-5, romance)).
given(exactly(4, 1-5, mathematics)).
given(exactly(2, 1-5, mystery)).

take(1-5, 2-5, 1).

probability(all(2-5, mathematics)).

property(genre, [mystery, mathematics, romance]).

