% M797: You go to the movies with 4 other friends.  Two persons from your group are selected to get free tickets.  What is the probability that you are NOT one of the persons selected? ## Solution= 0.6

group(group_of_friends).

given(exactly(1, group_of_friends, you)).
given(exactly(4, group_of_friends, other)).

take(group_of_friends, 2-2, 2).

probability(none(2-2, you)).

property(identity, [you, other]).

