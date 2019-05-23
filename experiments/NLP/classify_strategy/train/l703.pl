% L703: A medication is 75 percent effective against a bacterial infection.  Find the probability that if 12 people take the medication, at least one person 's infection will not improve. ## Solution= 1-0.75^12

group(2-10).

given(exactly(rel(75/100,2-10), 2-10, effective)).

take_wr(2-10, 2-8, 12).


probability(atleast(1, 2-8, not(effective))).

property(outcome(0), [effective]).

