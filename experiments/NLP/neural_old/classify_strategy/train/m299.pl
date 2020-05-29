% M299: Leander has 4 blue, 3 black, and 5 red ties on his rack.  If he randomly selects a tie, what is the probability that he will select a tie that is NOT red? ## Solution= 0.583333333333333

group(1-15).

given(exactly(5, 1-15, red)).
given(exactly(4, 1-15, blue)).
given(exactly(3, 1-15, black)).

take(1-15, 2-6, 1).

probability(none(2-6, red)).

property(colour, [blue, black, red]).

