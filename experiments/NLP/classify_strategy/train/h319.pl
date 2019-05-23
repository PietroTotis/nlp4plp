% H319: A couple want to have four babies, for each baby, 50 percent are male, 50 percent are female.  Ask for the possibility of two boys and two girls. ## Solution= 6/16

group(1-11).
size(1-11, 2).

given(exactly(1, 1-11, female)).
given(exactly(1, 1-11, male)).

take_wr(1-11, 1-7, 4).


probability(exactly(2, 1-7, male)).

property(outcome(0), [male, female]).

