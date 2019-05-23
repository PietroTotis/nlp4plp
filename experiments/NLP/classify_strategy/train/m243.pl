% M243: 5 people in a group of 50 people are left handed.  There are 20 females in the group.  A person is picked at random from the group.  What is the probability that the person picked is female? ## Solution= 2/5

group(1-5).
size(1-5, 50).

given(exactly(5, 1-5, left)).
given(exactly(20, 1-5, female)).

take(1-5, 3-2, 1).

probability(all(3-2, female)).

property(hand, [left]).
property(sex, [female]).

