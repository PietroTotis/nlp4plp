% H749: If is known that 60 percent of mice inoculated with a serum are protected from a certain disease.  If 5 mice are inoculated, find the probability that fewer than 2 contract the disease. ## Solution= 0.33696

group(1-8).

given(exactly(rel(60/100,1-8), 1-8, protect)).

take_wr(1-8, 2-3, 5).


probability(less_than(2, 2-3, not(protect))).

property(outcome(0), [protect]).

