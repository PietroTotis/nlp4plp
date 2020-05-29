% L373: At an office supply store all the ballpoint pens that have been in stock for more than one year are dumped into a large box.  They all look the same but there are four ink colors.  There are 30 black ink, 18 blue, 24 red and 10 green.  If a pen is selected at random what is the probability that it writes black? ## Solution= 15/41

group(1-9).

given(exactly(24, 1-9, red)).
given(exactly(18, 1-9, blue)).
given(exactly(30, 1-9, black)).
given(exactly(10, 1-9, green)).

take(1-9, 4-3, 1).

probability(all(4-3, black)).

property(property, [blue, green, black, red]).

