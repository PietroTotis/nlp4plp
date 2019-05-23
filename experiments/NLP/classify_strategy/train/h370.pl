% H370: A drawer contains five red socks and eight blue socks.  Leo reaches into the bag and randomly selects two socks without replacement.  What is the probability that Leo will get different-colored socks? ## Solution= 20/39

group(1-2).

given(exactly(8, 1-2, blue)).
given(exactly(5, 1-2, red)).

take(1-2, 2-10, 2).

probability(all_diff(2-10,color)).

property(color, [blue, red]).

