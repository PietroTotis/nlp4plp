% L376: At an office supply store all the ballpoint pens that have been in stock for more than one year are dumped into a large box.  They all look the same but there are four ink colors.  There are 30 black ink, 18 blue, 24 red and 10 green.  6 of the black pens are defective, 5 of the blue pens are defective, 10 of the red pens are defective and 4 of the green pens are defective.  If a pen is selected at random and has blue ink what is the probability that it is not defective? ## Solution= 13/18

group(1-9).

given(exactly(18, 1-9, blue)).
given(exactly(10, 1-9, green)).
given(exactly(30, 1-9, black)).
given(exactly(6, 1-9, and(black, defective))).
given(exactly(10, 1-9, and(defective, red))).
given(exactly(4, 1-9, and(defective, green))).
given(exactly(24, 1-9, red)).
given(exactly(5, 1-9, and(blue, defective))).

take(1-9, 5-3, 1).
observe(all(5-3, blue)).

probability(none(5-3, defective)).

property(color, [blue, green, black, red]).
property(status, [defective]).

