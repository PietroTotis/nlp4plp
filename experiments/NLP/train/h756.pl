% H756: A company is interested in evaluating its current inspection procedure on shipments of 50 identical items.  The procedure is to take a sample of 5 and pass the shipment if no more than 2 are found to be defective.  What proportion of 20 percent defective shipments will be accepted? ## Solution= 0.9517397

group(1-16).
size(1-16, 50).

given(exactly(rel(20/100, 1-16), 1-16, defective)).

take(1-16, 2-9, 5).

probability(atmost(2, 2-9, defective)).

property(property, [defective]).

