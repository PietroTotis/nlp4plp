% H590: On the average, a typist has to correct one word out of 800 words.  Assuming that a page contains 200 words, find the probability of more than one correction per page. ## Solution= .0625

group(1-9).

given(exactly(rel(1/800,1-9), 1-9, correct)).

take_wr(1-9, 2-7, 200).


probability(more_than(1, 2-7, correct)).

property(outcome(0), [correct]).

