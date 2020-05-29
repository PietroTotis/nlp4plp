% M458: The probability of getting a white ball from a bag is 1/4.  What is the probability of not getting a white ball? ## Solution= 3/4

group(1-10).

given(exactly(rel(1/4,1-10), 1-10, white)).

take_wr(1-10, 1-4, 1).


probability(all(1-4, not(white))).

property(outcome(0), [white]).

