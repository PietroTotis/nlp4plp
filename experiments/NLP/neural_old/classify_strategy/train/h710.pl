% H710: Suppose that in a senior college class of 500 students it is found that 210 smoke, 258 drink alcoholic beverages, 216 eat between meals, 122 smoke and drink alcoholic beverages, 83 eat between meals and drink alcoholic beverages, 97 smoke and eat between meals, and 52 engage in all three of these bad health practices.  If a member of this senior class is selected at random, find the probability that the student eats between meals and drinks alcoholic beverages but does not smoke. ## Solution= 31/500

group(1-7).
size(1-7, 500).

given(exactly(52, 1-7, and(alcoholic, and(meal, smoke)))).
given(exactly(97, 1-7, and(meal, smoke))).
given(exactly(258, 1-7, alcoholic)).
given(exactly(83, 1-7, and(alcoholic, meal))).
given(exactly(122, 1-7, and(alcoholic, smoke))).
given(exactly(216, 1-7, meal)).
given(exactly(210, 1-7, smoke)).

take(1-7, 2-3, 1).

probability(all(2-3, and(not(smoke), and(alcoholic, meal)))).

property(drink, [alcoholic]).
property(eat, [meal]).
property(smoke, [smoke]).

