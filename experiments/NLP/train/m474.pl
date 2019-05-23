% M474: A paper bag contains 15 slips of paper.  Eight of them are blue and are numbered from 1 to 8.  Seven of them are pink and are numbered from 1 to 7.  A possible event is that a blue slip is chosen.  What is the probability of the complement of this event? ## Solution= 7/15

group(1-6).
size(1-6, 15).

given(exactly(7, 1-6, pink)).
given(exactly(8, 1-6, blue)).

take(1-6, 4-8, 1).

probability(none(4-8, blue)).

property(colour, [pink, blue]).

