% L525: If the probabilities are, respectively, 0.09, 0.15, 0.21, and 0.23 that a person purchasing a new automobile will choose the color green, white, red, or blue, what is the probability that a given buyer will purchase a new automobile that comes in one of those colors? ## Solution= 0.68

group(1-22).

given(exactly(rel(0.09,1-22), 1-22, green)).
given(exactly(rel(0.21,1-22), 1-22, red)).
given(exactly(rel(0.23,1-22), 1-22, blue)).
given(exactly(rel(0.15,1-22), 1-22, white)).

take_wr(1-22, 1-19, 1).


probability(all(1-19, or(or(green, white), or(red, blue)))).

property(outcome(0), [blue, white, green, red]).

