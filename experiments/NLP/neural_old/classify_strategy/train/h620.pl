% H620: An urn has 3 white marbles, 4 red marbles, and 5 blue marbles.  Three marbles are drawn at once from the urn, and their colour noted.  What is the probability that a marble of each colour is drawn? ## Solution= 3/11

group(1-2).

given(exactly(5, 1-2, blue)).
given(exactly(3, 1-2, white)).
given(exactly(4, 1-2, red)).

take(1-2, 2-2, 3).

probability(all_diff(2-2,color)).

property(color, [blue, white, red]).

