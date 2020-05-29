% L871: 100 people were surveyed about their smoking and drinking habits.  It was found that 19 people smoked cigarettes, 13 both smoked and drank alcohol and 15 people neither smoked nor drank alcohol.  What is the probability that a person smoke or drink but not both? ## Solution= 18/25

group(1-2).
size(1-2, 100).

given(exactly(15, 1-2, and(not_alcohol, not_smoke))).
given(exactly(19, 1-2, cigarette)).
given(exactly(13, 1-2, and(alcohol, cigarette))).

take(1-2, 3-7, 1).

probability(all(3-7, and(or(cigarette, alcohol), not(and(cigarette, alcohol))))).

property(drink, [not_alcohol, alcohol]).
property(smoke, [not_smoke, cigarette]).

