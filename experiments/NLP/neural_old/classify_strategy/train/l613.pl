% L613: J is taking two books along on her holiday vacation.  With probability .5, she will like the first book ; with probability .4, she will like the second book ; and with probability .3, she will like both books.  What is the probability that she likes neither book? ## Solution= 0.4

group(books).

given(exactly(rel(0.3, books), books, and(first, second))).
given(exactly(rel(0.5, books), books, first)).
given(exactly(rel(0.4, books), books, second)).

take(books, 3-4, 1).

probability(and(none(3-4, first), none(3-4, second))).

property(second, [second]).
property(first, [first]).

