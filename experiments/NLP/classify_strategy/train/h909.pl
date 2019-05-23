% H909: At a major and minor street intersection, one finds that, out of every 100 gaps on the major street, 65 are acceptable, that is, large enough for a car arriving on the minor street to cross.  When a vehicle arrives on the minor street, what is the probability that the first gap is not an acceptable one? ## Solution= .35

group(1-17).
size(1-17, 100).

given(exactly(65, 1-17, acceptable)).

take(1-17, 2-17, 1).

probability(none(2-17, acceptable)).

property(property, [acceptable]).

