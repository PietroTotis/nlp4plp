% L852: A spinner is divided into 4 equal portions coloured red, blue, green and yellow.  If the spinner is spun, find the probability that it lands on blue or yellow. ## Solution= 0.5

group(2-3).
size(2-3, 4).

given(exactly(1, 2-3, blue)).
given(exactly(1, 2-3, red)).
given(exactly(1, 2-3, green)).
given(exactly(1, 2-3, yellow)).

take_wr(2-3, 2-5, 1).


probability(all(2-5, or(blue, yellow))).

property(outcome(0), [blue, green, yellow, red]).

