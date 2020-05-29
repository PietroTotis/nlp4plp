% M196: A jury of 12 is to be selected from a list of 35 males and 15 females.  What is the probability that there is no more than one female on the jury? ## Solution= 0.05842554105989519

group(1-11).

given(exactly(15, 1-11, female)).
given(exactly(35, 1-11, male)).

take(1-11, 1-2, 12).

probability(atmost(1, 1-2, female)).

property(sex, [male, female]).

