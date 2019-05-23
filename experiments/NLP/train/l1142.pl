% L1142: At a small high-frequency hedge fund, two competing algorithms produce trades.  Algorithm A produces 80 trades per second and 5 percent lose money.  Algorithm B produces 20 trades per second but only 1 percent lose money.  Given the last trade lost money, what is the probability it was produced by algorithm B? ## Solution= 0.0476190476190476

group(1-12).

given(exactly(20, 1-12, b)).
given(exactly(rel(5/100, 1-12, a), 1-12, and(a, lose))).
given(exactly(80, 1-12, a)).
given(exactly(rel(1/100, 1-12, b), 1-12, and(b, lose))).

take(1-12, 4-4, 1).
observe(all(4-4, lose)).

probability(all(4-4, b)).

property(algorithm, [a, b]).
property(lose, [lose]).

