% H919: The distribution of blood types in the United States according to the `` ABO classification '' is O :45 percent, A :40 percent, B :11 percent, and AB :4 percent.  Blood is also classified according to Rh type, which can be negative or positive and is independent of the ABO type.  In the U.S. population, about 84 percent are Rh positive.  Sample two individuals at random and find the probability that they have the same ABO type and different Rh types. ## Solution= 0.10112256

group(3-4).

given(exactly(rel(84/100, 3-4), 3-4, positive)).
given(exactly(rel(11/100, 3-4), 3-4, b)).
given(exactly(rel(4/100, 3-4), 3-4, ab)).
given(exactly(rel(40/100, 3-4), 3-4, a)).
given(exactly(rel(45/100, 3-4), 3-4, o)).
given(exactly(u, 3-4, negative)).

take(3-4, 4-3, 2).

probability(and(all_same(4-3,abo), all_diff(4-3,rh))).

property(rh, [positive, negative]).
property(abo, [a, b, ab, o]).

