% M332: A box of 15 chocolates has 6 that are caramel, 5 that contain nuts, and 4 that are nougat.  If you randomly select 3 chocolates, what is the probability that you will get all nuts? ## Solution= 0.021978021978022

group(1-2).
size(1-2, 15).

given(exactly(6, 1-2, caramel)).
given(exactly(5, 1-2, nut)).
given(exactly(4, 1-2, nougat)).

take(1-2, 2-6, 3).

probability(all(2-6, nut)).

property(flavour, [caramel, nut, nougat]).

