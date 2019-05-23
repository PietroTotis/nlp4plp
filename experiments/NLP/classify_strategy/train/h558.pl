% H558: A sample of 3 coins is selected without replacement from 8 coins, consisting of 4 five-cents coins and 4 ten-cents coins.  What is the probability the sample contains at least 2 five-cent coins? ## Solution= 1/2

group(1-12).
size(1-12, 8).

given(exactly(4, 1-12, ten-cent)).
given(exactly(4, 1-12, five-cent)).

take(1-12, 1-5, 3).

probability(atleast(2, 1-5, five-cent)).

property(property, [five-cent, ten-cent]).

