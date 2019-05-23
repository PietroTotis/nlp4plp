% H397: In a National Day celebration, 10000 peoples participate in the national march.  4000 of them wear soldier uniforms, 2500 wear police uniforms, 500 wear fireman uniforms and the rest are a variety of other uniforms.  If the best uniform will be rewarded among the participants, what is probability that a soldier will win the reward? ## Solution= 2/5

group(1-8).
size(1-8, 10000).

given(exactly(3000, 1-8, rest)).
given(exactly(4000, 1-8, soldier)).
given(exactly(2500, 1-8, police)).
given(exactly(500, 1-8, fireman)).

take(1-8, 3-17, 1).

probability(all(3-17, soldier)).

property(property, [soldier, police, rest, fireman]).

