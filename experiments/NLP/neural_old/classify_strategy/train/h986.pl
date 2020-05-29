% H986: Samples of 100 are selected each hour from a production process that produces items, 20 percent of which are defective.  What is the probability that at most 15 defectives are found in an hour? ## Solution= .1285

group(1-14).

given(exactly(rel(20/100,1-14), 1-14, defective)).

take_wr(1-14, 1-1, 100).


probability(atmost(15, 1-1, defective)).

property(outcome(0), [defective]).

