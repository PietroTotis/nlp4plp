% L374: At an office supply store all the ballpoint pens that have been in stock for more than one year are dumped into a large box.  They all look the same but there are four ink colors.  There are 30 black ink, 18 blue, 24 red and 10 green.  If the first pen selected writes blue and is not replaced what is the probability that the second pen also writes blue? ## Solution= 0.209876543209877

group(1-9).

group(rest(4-4)).

given(exactly(24, 1-9, red)).
given(exactly(18, 1-9, blue)).
given(exactly(30, 1-9, black)).
given(exactly(10, 1-9, green)).

take(rest(4-4), 4-19, 1).
take(1-9, 4-4, 1).
observe(all(4-4, blue)).

probability(all(4-19, blue)).

property(property, [blue, green, black, red]).

