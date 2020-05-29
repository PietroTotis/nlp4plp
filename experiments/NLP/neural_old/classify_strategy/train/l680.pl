% L680: The Neckware Association of America reported that 3 percent of ties sold in the United States are bow ties.  If 4 customers who purchased a tie are randomly selected, find the probability that at least one purchased a bow tie. ## Solution= 0.11470719

group(2-3).

given(exactly(rel(0.03,2-3), 2-3, tie)).

take_wr(2-3, 2-10, 4).


probability(atleast(1, 2-10, tie)).

property(outcome(0), [tie]).

