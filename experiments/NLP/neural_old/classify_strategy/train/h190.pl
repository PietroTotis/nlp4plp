% H190: A woman is pregnant with twin boys.  Twins may be either identical or not, fraternal.  In general, 1/3 of twins born are identical.  Obviously, identical twins must be of the same sex ; fraternal twins may or may not be.  Assume that identical twins are equally likely to be both boys or both girls, while for fraternal twins all possibilities are equally likely.  Given the above information, what is the probability that the woman 's twins are identical? ## Solution= 1/2

group(2-1).

given(exactly(rel(1/3, 2-1), 2-1, identical)).
given(exactly(rel(1/2, 2-1, fraternal), 2-1, and(different, fraternal))).
given(exactly(rel(1/2, 2-1, fraternal), 2-1, and(fraternal, same))).
given(exactly(rel(2/3, 2-1), 2-1, fraternal)).
given(exactly(rel(1/1, 2-1, identical), 2-1, and(identical, same))).

take(2-1, 6-14, 1).
observe(all(6-14, same)).

probability(all(6-14, identical)).

property(gender, [different, same]).
property(property, [identical, fraternal]).

