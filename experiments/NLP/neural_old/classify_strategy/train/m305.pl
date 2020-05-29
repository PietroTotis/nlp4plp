% M305: A couple plans to have four children.  Assuming that boys and girls are equally likely, find the probability that the couple will have at least one boy? ## Solution= 0.9375

group(1-7).
size(1-7, 2).

given(exactly(1, 1-7, boy)).
given(exactly(1, 1-7, girl)).

take_wr(1-7, 1-5, 4).


probability(atleast(1, 1-5, boy)).

property(sex(0), [boy, girl]).

