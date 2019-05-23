% L590: A forest contains 20 elk, of which 5 are captured, tagged, and then released.  A certain time later, 4 of the 20 elk are captured.  What is the probability that 2 of these 4 have been tagged? ## Solution= 70/323

group(1-2).
size(1-2, 20).

given(exactly(5, 1-2, tag)).

take(1-2, 2-6, 4).

probability(exactly(2, 2-6, tag)).

property(property, [tag]).

