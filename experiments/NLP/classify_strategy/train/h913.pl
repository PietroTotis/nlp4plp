% H913: A shipment of electronic parts is sampled by testing items sequentially until the first defective part is found.  If 10 or more parts are tested before the first defective part is found, the shipment is accepted as meeting specifications.  Determine the probability that the shipment will be accepted if it contains 10 percent defective parts. ## Solution= 0.34867844

group(1-2).

given(exactly(rel(10/100, 1-2), 1-2, defective)).

take(1-2, 2-2, 10).

probability(none(2-2, defective)).

property(property, [defective]).

