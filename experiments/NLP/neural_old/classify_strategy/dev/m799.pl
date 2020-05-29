% M799: Ten percent of the students in a certain class will not pass.  If two students are selected at random from the class, what is the probability that both will pass? ## Solution= 0.81

group(1-5).

given(exactly(rel(10/100, 1-5), 1-5, not_pass)).

take_wr(1-5, 2-3, 2).

probability(none(2-3, not_pass)).

property(result, [not_pass]).

