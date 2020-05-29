% M186: A committee of six is randomly selected from a club with 18 male and 12 female members.  What is the probability that there is at least one female on the committee? ## Solution= 0.968735632183908

group(1-10).

given(exactly(12, 1-10, female)).
given(exactly(18, 1-10, male)).

take(1-10, 1-2, 6).

probability(atleast(1, 1-2, female)).

property(sex, [male, female]).

