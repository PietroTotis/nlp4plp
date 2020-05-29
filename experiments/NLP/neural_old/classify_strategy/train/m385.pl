% M385: Three students are randomly selected from a group of twelve, including twins Billy and Adam.  What is the probability that Adam is selected, but Billy is not? ## Solution= 0.2045454545

group(1-8).
size(1-8, 12).

given(exactly(1, 1-8, adam)).
given(exactly(1, 1-8, billy)).

take(1-8, 1-2, 3).

probability(and(atleast(1, 1-2, adam), all(1-2, not(billy)))).

property(twin, [billy, adam]).

