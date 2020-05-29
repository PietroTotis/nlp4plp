% M258: Carolyn has 20 biscuits in a tin.  She has 12 plain biscuits, 5 chocolate biscuits, 3 ginger biscuits.  Carolyn takes at random two biscuits from the tin.  What is the probability that the two biscuits were not the same type? ## Solution= 0.58421052631579

group(1-7).
size(1-7, 20).

given(exactly(12, 1-7, plain)).
given(exactly(5, 1-7, chocolate)).
given(exactly(3, 1-7, ginger)).

take(1-7, 3-6, 2).

probability(all_diff(3-6,type)).

property(type, [plain, ginger, chocolate]).

