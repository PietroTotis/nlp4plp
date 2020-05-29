% L301: The German professional basketball player Dirk Nowitzki plays in the American professional league NBC.  In the season 2006 - 07 he achieves a success rate of 90.4 percent in free throws.  Calculate the probability that he scores exactly 8 points with 10 trials. ## Solution= 0.184970480041743

group(2-17).

given(exactly(rel(0.904,2-17), 2-17, success)).

take_wr(2-17, 1-8, 10).


probability(exactly(8, 1-8, success)).

property(outcome(0), [success]).

