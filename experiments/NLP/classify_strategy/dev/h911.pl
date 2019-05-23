% H911: At a major and minor street intersection, one finds that, out of every 100 gaps on the major street, 65 are acceptable, that is, large enough for a car arriving on the minor street to cross.  When a vehicle arrives on the minor street, the first car has crossed the intersection.  What is the probability that the second will be able to cross at the very next gap? ## Solution= .65

group(1-17).
size(1-17, 100).

given(exactly(65, 1-17, acceptable)).

take(1-17, 3-7, 1).

probability(all(3-7, acceptable)).

property(property, [acceptable]).

