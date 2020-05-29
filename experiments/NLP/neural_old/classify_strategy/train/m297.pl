% M297: You spin a spinner with 4 equal parts: red, yellow, blue and green.  What is the probability that the spinner will NOT stop on red if you spin it one time? ## Solution= 3/4

group(1-4).
size(1-4, 4).

given(exactly(1, 1-4, blue)).
given(exactly(1, 1-4, red)).
given(exactly(1, 1-4, green)).
given(exactly(1, 1-4, yellow)).

take_wr(1-4, 1-2, 1).


probability(all(1-2, not(red))).

property(outcome(0), [blue, green, yellow, red]).

