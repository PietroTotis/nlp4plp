% L965: A family has two children.  What is the conditional probability that both are boys given that at least one of them is a boy? ## Solution= 1/3

group(1-5).
size(1-5, 2).

given(exactly(1, 1-5, boy)).
given(exactly(1, 1-5, v(1-5,0))).

take_wr(1-5, 1-3, 2).
observe(atleast(1, 1-3, boy)).


probability(all(1-3, boy)).

property(outcome(0), [boy, v(1-5,0)]).

