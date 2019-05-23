% L473:  The probability that a new small firm will survive for 2 years has been estimated at 0.22.  Given that it survives for 2 years, the probability that it will have a turnover in excess of # 250,000 per annum in a further 3 years is estimated at 0.44.  Determine the probability that a new business starting now will have a turnover of more than # 250,000 in 5 years. ## Solution= 0.0968

group(firms).

given(exactly(rel(0.22, firms), firms, survive)).
given(exactly(rel(0.44, firms, survive), firms, and(survive, rich))).

take(firms, firm, 1).

probability(all(firm, rich)).

property(survive, [survive]).
property(rich, [rich]).
