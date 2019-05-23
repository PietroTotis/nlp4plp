% L663: At a used-book sale, 100 books are adult books and 160 are children 's books.  Of the adult books, 70 are nonfiction while 60 of the children 's books are nonfiction.  If a book is selected at random, find the probability that it is not a children 's nonfiction book. ## Solution= 10/13

group(books).

given(exactly(160, books, child)).
given(exactly(100, books, adult)).
given(exactly(70, books, and(adult, nonfiction))).
given(exactly(60, books, and(child, nonfiction))).

take(books, 3-3, 1).

probability(all(3-3, not(and(child, nonfiction)))).

property(age, [adult, child]).
property(fiction, [nonfiction]).

