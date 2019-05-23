% L922: If the chance that a vessel arrives safely at a port is 9/10 then what is the chance that out of 5 vessels expected at least 4 will arrive safely? ## Solution= 14*9^4/10^5

group(1-23).

given(exactly(rel(9/10,1-23), 1-23, safely)).

take_wr(1-23, 1-29, 5).


probability(atleast(4, 1-29, safely)).

property(outcome(0), [safely]).

