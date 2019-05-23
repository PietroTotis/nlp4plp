% L568: A survey has shown the following reasons for people coming to New Zealand.  25 percent arrive mainly for business, the rest arrive mainly for a holiday.  20 percent of the people arriving on business visit friends while they are here.  35 percent of the people arriving for a holiday visit friends while they are here.  What is the probability that a person coming to New Zealand: will arrive on holiday and visit friends? ## Solution= 0.2625

group(1-9).

given(exactly(rel(25/100, 1-9), 1-9, business)).
given(exactly(rel(75/100, 1-9), 1-9, holiday)).
given(exactly(rel(20/100, 1-9, business), 1-9, and(business, visit))).
given(exactly(rel(35/100, 1-9, holiday), 1-9, and(holiday, visit))).

take(1-9, 5-7, 1).

probability(and(all(5-7, holiday), all(5-7, visit))).

property(reason, [holiday, business]).
property(activity, [visit]).

