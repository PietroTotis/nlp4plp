% L403: Identical twins come from the same egg and hence are of the same sex.  Fraternal twins have a 50-50 chance of being the same sex.  Among twins the probability of a fraternal set is 1/3 and an identical set is 2/3.  If the next set of twins are of the same sex, what is the probability they are identical? ## Solution= 4/5

group(3-2).

given(exactly(rel(1/3, 3-2), 3-2, fraternal)).
given(exactly(rel(1/1, 3-2, identical), 3-2, and(identical, same))).
given(exactly(rel(2/3, 3-2), 3-2, identical)).
given(exactly(rel(1/2, 3-2, fraternal), 3-2, and(fraternal, same))).

take(3-2, 4-4, 1).
observe(all(4-4, same)).

probability(all(4-4, identical)).

property(sex, [same]).
property(nature, [identical, fraternal]).

