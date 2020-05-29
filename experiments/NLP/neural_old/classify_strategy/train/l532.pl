% L532: If 3 books are picked at random from a shelf containing 5 novels, 3 books of poems, and a dictionary, what is the probability that 2 novels and 1 book of poems are selected? ## Solution= 5/14

group(1-10).

given(exactly(1, 1-10, dictionary)).
given(exactly(5, 1-10, novel)).
given(exactly(3, 1-10, book)).

take(1-10, 1-3, 3).

probability(and(exactly(2, 1-3, novel), exactly(1, 1-3, book))).

property(property, [book, dictionary, novel]).

