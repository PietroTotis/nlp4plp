% M568: A refrigerator contains 6 apples, 5 oranges, 10 bananas, 3 pears, 7 peaches, 11 plums, and 2 mangos.  What is the probability that you stick your hand in the refrigerator one time and pull out a mango or an orange? ## Solution= 0.159090909090909

group(1-2).

given(exactly(11, 1-2, plum)).
given(exactly(6, 1-2, apple)).
given(exactly(10, 1-2, banana)).
given(exactly(5, 1-2, orange)).
given(exactly(3, 1-2, pear)).
given(exactly(2, 1-2, mango)).
given(exactly(7, 1-2, peach)).

take(1-2, 2-19, 1).

probability(all(2-19, or(mango, orange))).

property(fruit, [apple, peach, plum, pear, mango, orange, banana]).

