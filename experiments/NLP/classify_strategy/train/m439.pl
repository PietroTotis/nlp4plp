% M439: A box contains 3 pens, 2 markers and 1 highlighter.  Tara selects one item at random and does not return it to the box.  She then selects a second item at random.  What is the probability that Tara selects one pen and then one marker? ## Solution= 0.2

group(1-2).

given(exactly(2, 1-2, marker)).
given(exactly(3, 1-2, pen)).
given(exactly(1, 1-2, highlighter)).

take(1-2, 2-4, 2).

probability(and(nth(1, 2-4, pen), nth(2, 2-4, marker))).

property(item, [marker, pen, highlighter]).

