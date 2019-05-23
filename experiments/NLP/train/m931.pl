% M931: A basket contains five apples and seven peaches.  You randomly select one piece of fruit and eat it.  Then you randomly select another piece of fruit.  What is the probability that the first piece of fruit is an apple and the second piece is a peach? ## Solution= 0.265151515151515

group(rest(2-5)).

group(1-2).

given(exactly(7, 1-2, peach)).
given(exactly(5, 1-2, apple)).

take(rest(2-5), 3-6, 1).
take(1-2, 2-5, 1).

probability(and(all(3-6, peach), all(2-5, apple))).

property(fruit, [apple, peach]).

