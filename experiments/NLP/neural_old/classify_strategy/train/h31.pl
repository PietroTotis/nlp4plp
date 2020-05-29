% H31: There are ten students in the class.  Every day, the teacher selects a random student to erase the board.  What are the odds that Student A will be selected to clean the board today? ## Solution= 1/10

group(1-4).
size(1-4, 10).

given(exactly(1, 1-4, a)).

take(1-4, 2-9, 1).

probability(all(2-9, a)).

property(property, [a]).

