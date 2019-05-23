% L941: When buying a dozen eggs, Mrs. Murphy always inspects 3 eggs for cracks ; if one or more of these eggs has a crack, she does not buy the carton.  Assuming that each subset of 3 eggs has an equal probability of being selected, what is the probability that Mrs. Murphy will buy a carton which has 5 eggs with cracks? ## Solution= 0.15909091

group(1-5).
size(1-5, 12).

given(exactly(5, 1-5, crack)).

take(1-5, 1-12, 3).

probability(none(1-12, crack)).

property(property, [crack]).

