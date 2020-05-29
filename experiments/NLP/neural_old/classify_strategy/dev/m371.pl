% M371: You hold the Q in a game of scrabble, and need a U.  There are 7 letters left in the bag, but only one U.  If you select four letters at random, what is the probability that you will get the U? ## Solution= 0.5714285714

group(2-8).
size(2-8, 7).

given(exactly(1, 2-8, u)).

take(2-8, 3-5, 4).

probability(atleast(1, 3-5, u)).

property(letter, [u]).

