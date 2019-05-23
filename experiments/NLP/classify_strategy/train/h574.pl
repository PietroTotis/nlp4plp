% H574: Hospital records show that of patients suffering from a certain complaint, 75 percent die of it.  What is the probability that, of 6 randomly selected patients, all will recover? ## Solution= .0002441

group(1-15).

given(exactly(rel(75/100,1-15), 1-15, die)).

take_wr(1-15, 2-11, 6).


probability(all(2-11, not(die))).

property(outcome(0), [die]).

