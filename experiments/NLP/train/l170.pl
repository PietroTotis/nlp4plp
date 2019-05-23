% L170: A family has 3 children, of which it is given that at least one is a boy.  Find the probability that all 3 children are boys.  We assume that boys and girls have the same probability of being born. ## Solution= 1/7

group(1-5).
size(1-5, 2).

given(exactly(1, 1-5, boy)).
given(exactly(1, 1-5, v(1-5,0))).

take_wr(1-5, 2-8, 3).
observe(atleast(1, 2-8, boy)).


probability(all(2-8, boy)).

property(outcome(0), [boy, v(1-5,0)]).

