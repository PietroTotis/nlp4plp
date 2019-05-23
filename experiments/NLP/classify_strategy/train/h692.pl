% H692: According to the U.S. Census Bureau, the 2005 poverty rate for households with female heads and children under age 6 was 48.3 percent ; it was 24.0 percent for household with male heads and children under age 6 ; and it was 8.7 percent for married-couple homes with children under age 6.  For households with children under age 6, 22.2 percent have female heads, 5.5 percent have male heads, and 72.3 percent are married-couple homes.  What is the probability that a randomly selected household with a child under age 6 who was living in poverty in 2005 was a married-couple home? ## Solution= 0.34310821646566

group(1-5).

given(exactly(rel(5.5/100, 1-5), 1-5, male)).
given(exactly(rel(24.0/100, 1-5, male), 1-5, and(male, poverty))).
given(exactly(rel(48.3/100, 1-5, female), 1-5, and(female, poverty))).
given(exactly(rel(72.3/100, 1-5), 1-5, married-couple)).
given(exactly(rel(22.2/100, 1-5), 1-5, female)).
given(exactly(rel(8.7/100, 1-5, married-couple), 1-5, and(married-couple, poverty))).

take(1-5, 3-9, 1).
observe(all(3-9, poverty)).

probability(all(3-9, married-couple)).

property(property, [poverty]).
property(heads, [male, female, married-couple]).

