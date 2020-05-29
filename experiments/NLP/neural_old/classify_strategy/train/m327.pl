% M327: Assume that boy and girl babies are equally likely.  If a couple have three children, what is the probability that all the children are girls given that the second is a girl? ## Solution= 0.25

group(1-6).
size(1-6, 2).

given(exactly(1, 1-6, boy)).
given(exactly(1, 1-6, girl)).

take_wr(1-6, 2-4, 3).
observe(nth(2, 2-4, girl)).


probability(all(2-4, girl)).

property(sex(0), [boy, girl]).

