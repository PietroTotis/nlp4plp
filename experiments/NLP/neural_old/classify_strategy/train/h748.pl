% H748: Is is known that 60 percent of mice inoculated with a serum are protected from a certain disease.  If 5 mice are inoculated, find the probability that none contracts the disease. ## Solution= 0.07776

group(1-8).

given(exactly(rel(60/100,1-8), 1-8, protect)).

take_wr(1-8, 2-3, 5).


probability(all(2-3, protect)).

property(outcome(0), [protect]).

