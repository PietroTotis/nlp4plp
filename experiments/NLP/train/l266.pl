% L266: Sharon has 8 mystery books and 9 science-fiction books.  Four are selected at random.  Find the probability of 3 mysteries and 1 science-fiction book. ## Solution= 18/85

group(1-1).

given(exactly(9, 1-1, science-fiction)).
given(exactly(8, 1-1, mystery)).

take(1-1, 2-1, 4).

probability(and(exactly(3, 2-1, mystery), exactly(1, 2-1, science-fiction))).

property(property, [mystery, science-fiction]).

