% H376: Bob and Megan play a two-person game which is won by the first person to accumulate 10 points.  At each turn Bob gains a point with probability of 1/3.  If he does n't get a point, then Megan gets a point.  Megan is now ahead 9 to 8.  What is the probability that Megan will win? ## Solution= 8/9

group(1-7).

given(exactly(rel(1/3,1-7), 1-7, bob)).
given(exactly(u, 1-7, megan)).

take_wr(1-7, 5-8, 2).


probability(atleast(1, 5-8, megan)).

property(outcome(0), [bob, megan]).

