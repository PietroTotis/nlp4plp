% M328: Assume that boy and girl babies are equally likely.  If a couple have three children, what is the probability that all the children are girls given that at least two are girls? ## Solution= 0.25

group(1-6).
size(1-6, 2).

given(exactly(1, 1-6, boy)).
given(exactly(1, 1-6, girl)).

take_wr(1-6, 2-4, 3).
observe(atleast(2, 2-4, girl)).


probability(all(2-4, girl)).

property(sex(0), [boy, girl]).

