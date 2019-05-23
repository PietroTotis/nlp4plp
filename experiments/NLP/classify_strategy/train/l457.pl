% L457: Erica has 5 blue pens, 3 black pens, and 6 red pens in her desk drawer.  She reaches into her drawer and, without looking, picks a black pen.  She keeps the black pen and then reaches into her drawer again to pick a second pen.  What is the probability that the second pen will also be black? ## Solution= 2/13

group(rest(2-14)).

group(1-18).

given(exactly(6, 1-18, red)).
given(exactly(3, 1-18, black)).
given(exactly(5, 1-18, blue)).

take(1-18, 2-14, 1).
observe(all(2-14, black)).
take(rest(2-14), 3-17, 1).

probability(all(3-17, black)).

property(property, [blue, black, red]).

