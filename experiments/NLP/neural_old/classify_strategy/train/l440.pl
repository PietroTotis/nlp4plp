% L440: The names of the seven days of the week, of which two are weekend days, are placed in a hat.  Three names are drawn out ; these will be the days of the Probability I lectures.  What is the probability that no lecture is scheduled at the weekend? ## Solution= 2/7

group(1-9).
size(1-9, 7).

given(exactly(2, 1-9, weekend)).

take(1-9, 2-2, 3).

probability(none(2-2, weekend)).

property(property, [weekend]).

