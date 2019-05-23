% L891: A fair spinner has four equally divided color sections, blue, red, green and yellow.  What is the probability that the spinner will land on green? ## Solution= 0.25

group(2-7).
size(2-7, 4).

given(exactly(1, 2-7, blue)).
given(exactly(1, 2-7, red)).
given(exactly(1, 2-7, green)).
given(exactly(1, 2-7, yellow)).

take_wr(2-7, 2-9, 1).


probability(all(2-9, green)).

property(outcome(0), [blue, green, yellow, red]).

