% M77: Marie is getting married tomorrow, at an outdoor ceremony in the desert.  In recent years, it has rained only 5 days each year.  Unfortunately, the weatherman has predicted rain for tomorrow.  When it actually rains, the weatherman correctly forecasts rain 90 percent of the time.  When it does not rain, he incorrectly forecasts rain 10 percent of the time.  What is the probability that it will rain on the day of Marie 's wedding? ## Solution= 0.11111111

group(weather).

given(exactly(rel(90/100, weather, yes), weather, and(rain, yes))).
given(exactly(rel(5/365, weather), weather, yes)).
given(exactly(rel(10/100, weather, no), weather, and(no, rain))).
given(exactly(rel(360/365, weather), weather, no)).

take(weather, 6-4, 1).
observe(all(6-4, rain)).

probability(all(6-4, yes)).

property(prediction, [rain]).
property(rain, [yes, no]).

