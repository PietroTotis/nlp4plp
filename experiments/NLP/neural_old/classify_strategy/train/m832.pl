% M832: According to a December 2007 Gallup poll, 24 percent of American adults have visited a casino in the past 12 months.  What is the probability that 4 randomly selected adult Americans have visited a casino in past 12 months? ## Solution= 0.00331776

group(1-13).

given(exactly(rel(24/100, 1-13), 1-13, visit)).

take(1-13, 2-10, 4).

probability(all(2-10, visit)).

property(property, [visit]).

