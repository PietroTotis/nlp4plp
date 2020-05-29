% M187: A committee of six is randomly selected from a club with 18 male and 12 female members.  What is the probability that there are three males and three females on the committee? ## Solution= 0.302336743716054

group(1-10).

given(exactly(12, 1-10, female)).
given(exactly(18, 1-10, male)).

take(1-10, 1-2, 6).

probability(and(exactly(3, 1-2, male), exactly(3, 1-2, female))).

property(sex, [male, female]).

