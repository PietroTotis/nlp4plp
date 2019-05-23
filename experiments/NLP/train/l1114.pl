% L1114: An urn contains 10 red balls and 15 blue balls.  Six balls are drawn at random from the urn.  What is the probability that at least one ball is red? ## Solution= 447/460

group(1-2).

given(exactly(15, 1-2, blue)).
given(exactly(10, 1-2, red)).

take(1-2, 2-2, 6).

probability(atleast(1, 2-2, red)).

property(property, [blue, red]).

