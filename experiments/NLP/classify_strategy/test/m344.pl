% M344: A box contains 2 red marbles, 3 white marbles, 4 green marbles and 1 blue marble.  Two marbles are drawn at random without replacement.  What is the probability of selecting a red or white on the first draw and green or blue on the second draw? ## Solution= 5/18

group(1-2).

given(exactly(1, 1-2, blue)).
given(exactly(3, 1-2, white)).
given(exactly(4, 1-2, green)).
given(exactly(2, 1-2, red)).

take(1-2, 2-2, 2).

probability(and(nth(1, 2-2, or(red, white)), nth(2, 2-2, or(green, blue)))).

property(colour, [blue, white, green, red]).

