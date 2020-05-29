% L673: Approximately 9 percent of men have a type of color blindness that prevents them from distinguishing between red and green.  If 3 men are selected at random, find the probability that all of them will have this type of red-green color blindness. ## Solution= 0.000729

group(2-3).

given(exactly(rel(0.09,2-3), 2-3, blindness)).

take_wr(2-3, 2-5, 3).


probability(all(2-5, blindness)).

property(outcome(0), [blindness]).

