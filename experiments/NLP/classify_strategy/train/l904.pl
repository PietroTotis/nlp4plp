% L904: At the Tire Store a problem has occurred unbeknownst to the managers: 10 percent of all the tires currently in stock in their warehouse are defective.  Mr. Z purchase 4 tires each for two vehicles and they are randomly selected from the stock.  Find the probability that all 8 tires will be defective? ## Solution= 1.00E-08

group(2-5).

given(exactly(rel(0.1,2-5), 2-5, defective)).

take_wr(2-5, 2-3, 8).


probability(all(2-3, defective)).

property(outcome(0), [defective]).

