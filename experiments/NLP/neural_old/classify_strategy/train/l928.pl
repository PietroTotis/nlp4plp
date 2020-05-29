% L928: In a group of 72 students, 14 take neither English nor chemistry, 42 take English and 38 take chemistry.  What is the probability that a student chosen at random from this group takes chemistry but not English? ## Solution= 0.222222222222222

group(1-6).
size(1-6, 72).

given(exactly(38, 1-6, chemistry)).
given(exactly(14, 1-6, and(neither, nor))).
given(exactly(42, 1-6, english)).

take(1-6, 2-7, 1).

probability(and(all(2-7, chemistry), none(2-7, english))).

property(chemistry, [chemistry, nor]).
property(english, [neither, english]).

