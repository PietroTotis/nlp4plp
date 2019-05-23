% H470: A hobby shop finds that 35 percent of its customers buy an electronic game.  If customers buy independently, what is the probability that at least one of the next five customers will buy an electronic game? ## Solution= 0.88397094

group(1-10).

given(exactly(rel(35/100,1-10), 1-10, buy)).

take_wr(1-10, 1-3, 5).


probability(atleast(1, 1-3, buy)).

property(outcome(0), [buy]).

