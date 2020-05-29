% H898: Manufacturer X produces PCs at two different locations in the world.  Fifteen percent of the PCs produced at location A are delivered defective to a retail outlet, while 5 percent of the PCs produced at location B are delivered defective to the same retail store.  If the manufacturing plant at A produces 1,000,000 PCs per year and the plant at B produces 150,000 PCs per year, find the probability of purchasing a defective PC. ## Solution= .13696

group(1-4).

given(exactly(rel(5/100, 1-4, b), 1-4, and(b, defective))).
given(exactly(rel(15/100, 1-4, a), 1-4, and(a, defective))).
given(exactly(1000000, 1-4, a)).
given(exactly(150000, 1-4, b)).

take(1-4, 3-30, 1).

probability(all(3-30, defective)).

property(plant, [a, b]).
property(defective, [defective]).

