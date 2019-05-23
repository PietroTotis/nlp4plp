% M778: Ten percent of the students at a University have blue eyes.  If two students are selected at random from this University, what is the probability that at least one of them has blue eyes? ## Solution= 19/100

group(1-5).

given(exactly(rel(10/100, 1-5), 1-5, blue)).

take(1-5, 2-3, 2).

probability(atleast(1, 2-3, blue)).

property(eyes_colour, [blue]).

