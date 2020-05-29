% L336: We draw consecutively 3 balls from a bowl with 5 white and 5 black balls, without putting them back.  What is the probability that all balls will be black? ## Solution= 0.083333333

group(1-8).

given(exactly(5, 1-8, white)).
given(exactly(5, 1-8, black)).

take(1-8, 1-5, 3).

probability(all(1-5, black)).

property(property, [white, black]).

