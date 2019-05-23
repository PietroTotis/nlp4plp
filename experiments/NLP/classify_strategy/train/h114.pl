% H114: The sides of number cube have the numbers 2, 4, 8, 9, 4, and 7.  If the cube is thrown once, what is the probability of rolling a 7? ## Solution= 1/6

group(2-5).
size(2-5, 6).

given(exactly(1, 2-5, 9)).
given(exactly(2, 2-5, 4)).
given(exactly(1, 2-5, 7)).
given(exactly(1, 2-5, 2)).
given(exactly(1, 2-5, 8)).

take_wr(2-5, 1-5, 1).


probability(all(1-5, 7)).

property(outcome(0), [9, 8, 2, 4, 7]).

