% H59: In a group of 92 students 40 have brown eyes and 35 have hazel eyes.  Find the probability that a student picked from this group at random either has hazel or brown eyes? ## Solution= 0.815217391304348

group(1-6).
size(1-6, 92).

given(exactly(35, 1-6, hazel)).
given(exactly(40, 1-6, brown)).

take(1-6, 2-6, 1).

probability(all(2-6, or(brown, hazel))).

property(property, [brown, hazel]).

