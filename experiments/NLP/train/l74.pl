% L74: Each of the letters of the word MISSISSIPPI are written on separate pieces of paper that are then folded, put in a hat, and mixed thoroughly.  One piece of paper is chosen without looking from the hat.  What is the probability it is an I? ## Solution= 4/11

group(1-15).
size(1-15, 11).

given(exactly(4, 1-15, i)).

take(1-15, 2-4, 1).

probability(all(2-4, i)).

property(property, [i]).

