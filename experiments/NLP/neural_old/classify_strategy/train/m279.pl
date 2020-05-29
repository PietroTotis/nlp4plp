% M279: Elizabeth has a bunch of red, yellow and white roses.  She chooses a rose at random.  The probability that she chooses a yellow rose is 0.1.  The probability that she chooses a white rose is 0.2.  What is the probability that Elizabeth chooses a rose that is either yellow or white? ## Solution= 0.3

group(1-11).

given(exactly(u, 1-11, red)).
given(exactly(rel(0.1,1-11), 1-11, yellow)).
given(exactly(rel(0.2,1-11), 1-11, white)).

take_wr(1-11, 5-7, 1).


probability(all(5-7, or(yellow, white))).

property(outcome(0), [white, yellow, red]).

