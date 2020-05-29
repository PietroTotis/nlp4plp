% L554: An allergist, claims that 50 percent of the patients she tests are allergic to some type of weed.  What, is the probability that exactly 3 of her next 4 patients are allergic to weeds? ## Solution= 1/4

group(2-13).

given(exactly(rel(0.5,2-13), 2-13, weed)).

take_wr(2-13, 2-15, 4).


probability(exactly(3, 2-15, weed)).

property(outcome(0), [weed]).

