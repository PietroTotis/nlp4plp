% H696: A farmer hires a consultant to tell him whether or not he needs to spray his cotton crop to control insects.  In any given year, the probability that treatment is necessary to prevent serious economic loss is 0.6.  If treatment is necessary, the consultant recommends treatment 99 percent of the time.  If treatment is not truly necessary, the consultant recommends treatment 40 percent of the time.  The farmer always follows the recommendation.  What is the probability that the farmer will spray 3 years straight? ## Solution= 0.42866106

group(2-4).

given(exactly(rel(99/100, 2-4, necessary), 2-4, and(necessary, recommend))).
given(exactly(u, 2-4, not)).
given(exactly(rel(40/100, 2-4, not), 2-4, and(not, recommend))).
given(exactly(rel(.6, 2-4), 2-4, necessary)).

take(2-4, 6-11, 3).

probability(all(6-11, recommend)).

property(consultant, [recommend]).
property(treatment, [not, necessary]).

