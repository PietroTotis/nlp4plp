% M478: Juan spins a spinner: 1/2 of the area is red, 1/4 is blue and 1/4 is white.  He notes the area on which the arrow stops, and then spins it a second time.  What is the probability that the outcome of the two spins is not blue both times? ## Solution= 0.5625

group(1-4).

given(exactly(rel(1/4,1-4), 1-4, blue)).
given(exactly(rel(1/4,1-4), 1-4, white)).
given(exactly(rel(1/2,1-4), 1-4, red)).

take_wr(1-4, 1-2, 2).


probability(all(1-2, not(blue))).

property(outcome(0), [blue, white, red]).

