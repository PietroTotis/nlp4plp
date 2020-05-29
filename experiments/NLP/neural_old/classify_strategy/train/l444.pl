% L444: An ice-cream seller has to decide whether to order more stock for the Bank Holiday weekend.  He estimates that, if the weather is sunny, he has a 90 percent chance of selling all his stock ; if it is cloudy, his chance is 60 percent ; and if it rains, his chance is only 20 percent.  According to the weather forecast, the probability of sunshine is 30 percent, the probability of cloud is 45 percent, and the probability of rain is 25 percent.  What is the overall probability that the salesman will sell all his stock? ## Solution= 0.59

group(3-4).

given(exactly(rel(20/100, 3-4, rain), 3-4, and(rain, sell))).
given(exactly(rel(45/100, 3-4), 3-4, cloud)).
given(exactly(rel(60/100, 3-4, cloud), 3-4, and(cloud, sell))).
given(exactly(rel(90/100, 3-4, sunshine), 3-4, and(sell, sunshine))).
given(exactly(rel(25/100, 3-4), 3-4, rain)).
given(exactly(rel(30/100, 3-4), 3-4, sunshine)).

take(3-4, 4-5, 1).

probability(all(4-5, sell)).

property(weather, [sunshine, rain, cloud]).
property(stock, [sell]).

