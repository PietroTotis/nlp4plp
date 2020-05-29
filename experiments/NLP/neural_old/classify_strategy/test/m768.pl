% M768: A student is taking English, Math and Science.  The student has 3 English books, 2 Math books and 4 Science books.  The student selects one book at random.  Find the probability that the book selected is a Science book. ## Solution= 4/9

group(books).

given(exactly(3, books, english)).
given(exactly(4, books, science)).
given(exactly(2, books, math)).

take(books, 3-5, 1).

probability(all(3-5, science)).

property(subject, [science, math, english]).

