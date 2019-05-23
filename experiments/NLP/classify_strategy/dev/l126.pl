% L126: A bag contains an equal number of red and blue counters.  One counter at a time is randomly selected from the bag, and then replaced before the next counter is selected.  If six counters are selected in this way, what is the probability that exactly three of them are red? ## Solution= 5/16

group(1-2).

given(exactly(rel(1/2, 1-2), 1-2, blue)).
given(exactly(rel(1/2, 1-2), 1-2, red)).

take_wr(1-2, 3-3, 6).

probability(exactly(3, 3-3, red)).

property(color, [blue, red]).

