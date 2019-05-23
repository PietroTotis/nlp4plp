% L527: Suppose that in a senior college class of 500 students it is found that 210 smoke, 258 drink alcoholic beverages, 216 eat between meals, 122 smoke and drink alcoholic beverages, 83 eat between meals and drink alcoholic beverages, 97 smoke and eat between meals, and 52 engage in all three of these bad health practices.  If a member of this senior class is selected at random, find the probability that the student smokes but does not drink alcoholic beverages. ## Solution= (43+45)/500

group(1-7).
size(1-7, 500).

given(exactly(258, 1-7, drink)).
given(exactly(52, 1-7, and(drink, and(eat, smoke)))).
given(exactly(122, 1-7, and(drink, smoke))).
given(exactly(83, 1-7, and(drink, eat))).
given(exactly(97, 1-7, and(eat, smoke))).
given(exactly(216, 1-7, eat)).
given(exactly(210, 1-7, smoke)).

take(1-7, 2-3, 1).

probability(all(2-3, and(smoke, not(drink)))).

property(s, [smoke]).
property(e, [eat]).
property(d, [drink]).

