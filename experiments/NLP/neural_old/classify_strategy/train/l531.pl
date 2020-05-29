% L531: If 3 books are picked at random from a shelf containing 5 novels, 3 books of poems, and a dictionary, what is the probability that the dictionary is selected? ## Solution= 1/3

group(1-10).

given(exactly(1, 1-10, dictionary)).
given(exactly(5, 1-10, novel)).
given(exactly(3, 1-10, book)).

take(1-10, 1-3, 3).

probability(exactly(1, 1-3, dictionary)).

property(property, [book, dictionary, novel]).

