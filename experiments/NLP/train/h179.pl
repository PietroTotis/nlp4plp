% H179: A certain person considers that he can drink and drive: usually he believes he has a negligible chance of being involved in an accident, whereas he believes that if he drinks two pints of beer, his chance of being involved in an accident on the way home is only one in five hundred.  Assuming that he drives home from the same pub every night, having drunk two pints of beer, what is the chance that he is involved in at least one accident in one year? ## Solution= .5184

group(2-4).

given(exactly(rel(1/500,2-4), 2-4, accident)).

take_wr(2-4, 2-35, 365).


probability(atleast(1, 2-35, accident)).

property(outcome(0), [accident]).

