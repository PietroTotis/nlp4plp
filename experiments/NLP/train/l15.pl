% L15: Half the face of a fair die are painted blue, half yellow.  The die is rolled twice.  What is the probability the die will turn up blue both times? ## Solution= 1/4

group(1-7).
size(1-7, 2).

given(exactly(1, 1-7, blue)).
given(exactly(1, 1-7, yellow)).

take_wr(1-7, 2-4, 2).


probability(all(2-4, blue)).

property(outcome(0), [blue, yellow]).

