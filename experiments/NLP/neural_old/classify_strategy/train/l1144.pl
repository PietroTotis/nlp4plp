% L1144: An insurance agent meets twelve potential customers independently, each of whom is equally likely to purchase an insurance product.  Six are interested only in auto insurance, four are interested only in homeowners insurance, and two are interested only in life insurance.  The agent makes six sales.  Calculate the probability that two are for auto insurance, two are for homeowners insurance, and two are for life insurance. ## Solution= 0.0974025974025974

group(1-7).
size(1-7, 12).

given(exactly(6, 1-7, auto)).
given(exactly(2, 1-7, life)).
given(exactly(4, 1-7, homeowner)).

take(1-7, 3-5, 6).

probability(and(exactly(2, 3-5, auto), and(exactly(2, 3-5, homeowner), exactly(2, 3-5, life)))).

property(insurance, [auto, life, homeowner]).

