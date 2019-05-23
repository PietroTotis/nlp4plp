% H902: There are 24 elephants in a game reserve.  The warden tags six of the elephants with small radio transmitters and returns them to the reserve.  The next month, he randomly selects five elephants from the reserve.  He counts how many of these elephants are tagged.  Assume that no elephants leave or enter the reserve, or die or give birth, between the tagging and the selection ; and that all outcomes of the selection are equally likely.  Find the probability that exactly two of the selected elephants are tagged ## Solution= 0.2879729

group(1-4).
size(1-4, 24).

given(exactly(6, 1-4, tag)).

take(1-4, 3-9, 5).

probability(exactly(2, 3-9, tag)).

property(property, [tag]).

