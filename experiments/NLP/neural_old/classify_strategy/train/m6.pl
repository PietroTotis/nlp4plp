% M6: Mrs. Weeks left some cans on the kitchen counter: 1 asparagus and 4 pumpkin.  Her son Charlie accidentally knocked one over and onto the floor.  How likely is it that he knocked over a can of asparagus? ## Solution= 1/5

group(1-5).

given(exactly(4, 1-5, pumpkin)).
given(exactly(1, 1-5, asparagus)).

take(1-5, 2-6, 1).

probability(all(2-6, asparagus)).

property(outcome, [asparagus, pumpkin]).

