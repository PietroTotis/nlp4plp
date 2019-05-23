% H579: In the long run 40 percent of patients treated for particular disease with the drug streptomycin are cured.  If a doctor were to treat 10 randomly chosen patients with the drug, what is the probability of 9 cures? ## Solution= .001573

group(1-9).

given(exactly(rel(40/100,1-9), 1-9, cure)).

take_wr(1-9, 2-10, 10).


probability(exactly(9, 2-10, cure)).

property(outcome(0), [cure]).

