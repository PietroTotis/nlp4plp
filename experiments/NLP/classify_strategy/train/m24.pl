% M24: In a large population 40 percent votes for A and 60 percent for B. Suppose we select at random 10 people.  What is the probability that in this group exactly 4 people will vote for A? ## Solution= 0.250822656

group(1-4).

given(exactly(rel(40/100, 1-4), 1-4, a)).
given(exactly(rel(60/100, 1-4), 1-4, b)).

take(1-4, 1-21, 10).

probability(exactly(4, 1-21, a)).

property(vote, [a, b]).

