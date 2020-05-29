% M83: A basket contains 10 apples and 20 oranges out of which 3 apples and 5 oranges are defective.  If we choose two fruits at random, what is the probability that either both are oranges or both are non defective? ## Solution= 316/435

group(1-2).

given(exactly(20, 1-2, orange)).
given(exactly(5, 1-2, and(defective, orange))).
given(exactly(3, 1-2, and(apple, defective))).
given(exactly(10, 1-2, apple)).

take(1-2, 2-5, 2).

probability(or(all(2-5, orange), all(2-5, not(defective)))).

property(kind_of_fruit, [orange, apple]).
property(property, [defective]).

