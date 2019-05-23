% L586: A total of 28 percent of American males smoke cigarettes, 7 percent smoke cigars, and 5 percent smoke both cigars and cigarettes.  What percentage of males smokes neither cigars nor cigarettes? ## Solution= 0.7

group(1-8).

given(exactly(rel(5/100, 1-8), 1-8, and(cigar, cigarette))).
given(exactly(rel(7/100, 1-8), 1-8, cigar)).
given(exactly(rel(28/100, 1-8), 1-8, cigarette)).

take(1-8, 2-2, 1).

probability(and(none(2-2, cigar), none(2-2, cigarette))).

property(cigarette, [cigarette]).
property(cigars, [cigar]).

