% L455: Erica has 5 blue pens, 3 black pens, and 6 red pens in her desk drawer.  If she randomly picks a pen from her drawer, what is the probability that she will pick a pen that is not black? ## Solution= 11/14

group(1-18).

given(exactly(6, 1-18, red)).
given(exactly(3, 1-18, black)).
given(exactly(5, 1-18, blue)).

take(1-18, 2-6, 1).

probability(none(2-6, black)).

property(property, [blue, black, red]).

