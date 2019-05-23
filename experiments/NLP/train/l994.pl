% L994: A medical agency is conducting a study about injuries resulted from activities for a group of people.  For this group, 50 percent were skiing, 30 percent were hiking, and 20 percent were playing soccer.  The probability of a person getting injured from skiing is 30 percent, it is 10 percent from hiking, and 20 percent from playing soccer.  What is the probability for a randomly selected person in the group for getting injured? ## Solution= 0.22

group(1-15).

given(exactly(rel(30/100, 1-15), 1-15, hike)).
given(exactly(rel(50/100, 1-15), 1-15, skiing)).
given(exactly(rel(30/100, 1-15, skiing), 1-15, and(injure, skiing))).
given(exactly(rel(20/100, 1-15), 1-15, soccer)).
given(exactly(rel(20/100, 1-15, soccer), 1-15, and(injure, soccer))).
given(exactly(rel(10/100, 1-15, hike), 1-15, and(hike, injure))).

take(1-15, 4-9, 1).

probability(all(4-9, injure)).

property(injured, [injure]).
property(activity, [hike, soccer, skiing]).

